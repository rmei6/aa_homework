const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, action) => {
  // return state; // remove this and fill out the body of the reducer function
  switch(action.type) {
    case "SWITCH_LOCATION":
      return {
        city: action.city,
        jobs: action.jobs
      };
    default:
    return state;
  }
};

export default reducer;

window.reducer = reducer;

// let action = {
//   type: "SWITCH_LOCATION",
//   city: "remote",
//   jobs: [
//     {
//       id: 1,
//       title: "Test Job",
//       company: "Github",
//       type: "Full Time",
//       location: "remote",
//       description: "test description",
//       url: "www.github.com/appacademy"
//     }
//   ]
// };
// reducer(null, action); //=> {city: "remote", jobs: [{ id: 1, .. }]}
