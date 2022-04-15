import React from 'react';

import {GiphysIndex} from './giphys_index';

export default class GiphysSearch extends React.Component {
    constructor(props){
        super(props);
        this.state = {searchTerm: "something"};
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bidn(this);
    }

    componentDidMount() {
        this.props.fetchSearchGiphys('something');
    }
    
    handleChange(e) {
        this.setState({searchTerm: e.target.value});
    }
    
    handleSubmit(e) {
        e.preventDefault();
        let searchTerm = this.state.searchTerm.split(' ').join('+');
        this.props.fetchSearchGiphys(searchTerm);
    }
    

    render(){
        return (
            <div>
                <form className='search-bar'>
                    <input type="text" onChange={this.handleChange} value={this.state.searchTerm}/>
                    <button type='submit' onClick={this.handleSubmit}>Search</button>
                </form>
                <GiphysIndex giphys={this.props}/>
            </div>
        )
    }
}
