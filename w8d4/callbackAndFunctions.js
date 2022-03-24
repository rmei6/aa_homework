window.setTimeout(() => alert('HAMMER TIME'), 5000);

function hammerTime (time){
    window.setTimeout(function () {
        alert(`${time} is hammertime!`);
    }, time);
}

const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits () {
    let first,second;
    reader.question('Would you like tea?', (res1) => {
        first = res1;
        console.log(`You replied ${res1}.`);
  
        reader.question('Would you like biscuits', (res2) => {
            second = res2;
            console.log(`You replied ${res2}.`);
  
            const firstRes = (first === 'yes' ) ? 'do' : 'don\'t';
            const secondRes = (second === 'yes') ? 'do' : 'dont\'t';
        
            console.log(`So you ${firstRes} want tea, and you ${secondRes} want biscuits.`);
            reader.close();
        });
    });
}