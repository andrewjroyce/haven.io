import React from 'react';
import {PieChart, Pie, Legend, Tooltip, Cell} from 'recharts'

const COLORS = ['#D5AAFF', '#6EB5FF', '#B28DFF', '#5CC6D9', '#97A2FF', '#FF9CEE', '#1B85B8'];

export default class UserPie extends React.Component{

  constructor(props){
    super(props);
    this.state ={
      intervalId: '',
      data: [
        {name: 'Total', value: 60, fill: '#d0ed57'},
      ]
    }
  }

  breakdown = (param) => {
    const request = new Request(`http://localhost:3000/api/users/breakdown?q=${param}`, {
      method: 'GET',
      credentials: 'same-origin',
      header: {'Content-Type': 'application/json'},
    })
    fetch(request)
    .then((res)=> res.json())
    .then(data =>{
      this.handleResponse(data);
    });
  }

  handleResponse = (data) => {
    function newColor(){
    var letters = 'ABCDE'.split('');
    var color = '#';
    for (var i=0; i<3; i++ ) {
        color += letters[Math.floor(Math.random() * letters.length)];
    }
    return color;
}
    let new_state = [];
    for(let key in data){
      new_state.push({name: key, value: data[key], label: key, fill: newColor()})
    };
    this.setState({data: new_state});
    console.log(new_state)
  }

  handleClick = (filter) => {
    this.breakdown(filter);
  }

  clear = () => {clearInterval(this.state.intervalId)}

  render(){
    return(
      <div className="col s12">
      <p>User Background</p>
        <PieChart width={300} height={245}>
          <Pie data={this.state.data} cx={150} cy={122} innerRadius={50} outerRadius={90} fill="#82ca9d" label>
          { this.state.data.map((entry, index) => <Cell fill={COLORS[index % COLORS.length]}/>)}
          </Pie>
          <Tooltip/>
        </PieChart>
        <div className="buttons">
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('profession')}>Profession</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('immigrant')}>Immigration Status</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('gender')}>Gender</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('ms')}>Marital Status</button>
        </div>
      </div>
    )
  }
}