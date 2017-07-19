import React from 'react';

//uncomment code to turn on polling
export default class LeftLayout extends React.Component {

  constructor(props){
    super(props);
    this.state ={count:''}
  }

  getCount = ()=>{
    const request = new Request('http://localhost:3000/api/users/count', {
        method: 'GET',
        credentials: 'same-origin',
        header: {'Content-Type': 'application/json'},
      })
      fetch(request)
      .then((res)=> res.json())
      .then(data =>{
        this.setState({count: data});
    })
  }

  componentDidMount(){
    this.getCount();
    let poll = setInterval(()=>{
      this.getCount();
    }, 10000)
  }

  render(){
    return(
      <div className="user-count">
      <h1>Current User Count: {this.state.count}</h1>
      </div>
    )
  }
}