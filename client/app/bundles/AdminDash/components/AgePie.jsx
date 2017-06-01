import React from 'react';
import {RadialBarChart, RadialBar, Legend, Tooltip} from 'recharts'


const style = {
  top: 0,
  left: 350,
  lineHeight: '25px'
};

//uncomment code to turn on polling
export default class AgePie extends React.Component{

  constructor(props){
    super(props);
    this.state ={
      intervalId: '',
      data: [
              {name: '15-24', uv: 0, fill: '#8884d8'},
              {name: '25-34', uv: 0, fill: '#83a6ed'},
              {name: '35-44', uv: 0, fill: '#8dd1e1'},
              {name: '45-54', uv: 0, fill: '#82ca9d'},
              {name: '55-64', uv: 0, fill: '#a4de6c'},
              {name: '65+', uv: 0, fill: '#d0ed57'}
            ]
    }
  }

  handleClick = (filter) => {
    this.clear();
    this.pullUsers(filter);
    this.poll = setInterval(()=>{
      this.setState({intervalId: this.poll});
      this.pullUsers(filter);
      }, 2000)
  }

  clear = () => {clearInterval(this.state.intervalId)}

  pullUsers = (param) => {
    const request = new Request(`http://localhost:3000/api/users/age?q=${param}`, {
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
    const new_data = [
              {name: '15-24', uv: data['0-19'], fill: '#8884d8'},
              {name: '25-34', uv: data['20-29'], fill: '#83a6ed'},
              {name: '35-44', uv: data['30-39'], fill: '#8dd1e1'},
              {name: '45-54', uv: data['40-49'], fill: '#82ca9d'},
              {name: '55-64', uv: data['50-59'], fill: '#a4de6c'},
              {name: '65+', uv: data['60+'], fill: '#d0ed57'}
            ]
    this.setState({data: new_data});
  }

  componentDidMount() {
    this.pullUsers();
    let poll = setInterval(()=>{
      this.pullUsers();
      this.setState({intervalId: poll});
    }, 2000)
  }
  
  render(){
    return(
      <div className="col s12">
        <RadialBarChart width={350} height={220} cx={170} cy={190} innerRadius={50} outerRadius={170} barSize={13} data={this.state.data}>
          <RadialBar minAngle={0} background clockWise={true} dataKey='uv'/>
          <Legend iconSize={10} width={100} height={150} layout='vertical' verticalAlign='middle' wrapperStyle={style}/>
          <Tooltip/>
        </RadialBarChart>
        <div className="buttons-first-row">
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('')}>All</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('hiv')}>HIV</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('male')}>Male</button> </div>    
 -        <div className="buttons-second-row">
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('female')}>Female</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('veteran')}>Veteran</button>
        </div>
      </div>
    )
  }
}