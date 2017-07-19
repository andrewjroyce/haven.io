import PropTypes from 'prop-types';
import React from 'react';
import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend} from 'recharts';

export default class TimeSeries extends React.Component {

  constructor(props){
    super(props);
    this.state ={
      show: [
        //'meetings',
         'arrested',
        // 'medicated',
         'indoors',
        // 'bathed',
        // 'drugs',
        //'fights',
        'sentiment'
      ],
      color: {
        meetings: "#8884d8",
        arrested: "#cadbdc",
        medicated: "#10adbc",
        indoors: "#fba188",
        bathed: "#cbd536",
        drugs: "#6ba9dd",
        fights: "#ff9ea3",
        sentiment: "#10adbc",
      },
      data: []
    }
  }

  getData = (length) => {
    if (length === 'week'){
      const request = new Request(`http://localhost:3000/api/reports/time?q=${length}`, {
        method: 'GET',
        credentials: 'same-origin',
        header: {'Content-Type': 'application/json'},
      })
      fetch(request)
      .then((res)=> res.json())
      .then(data =>{
        this.handleResponse(data);
      });
    } else {
      const request = new Request(`http://localhost:3000/api/reports/time?q=${length}`, {
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
  }

  handleResponse = (data) => {
    let new_state = [];
    data.forEach((day)=>{
      new_state.push({
        date: day.date,
        //meetings: day.meetings_count,
         arrested: day.arrested_count,
        // medicated: day.medicated_count,
         indoors: day.indoors_count,
        // bathed: day.bathed_count,
        // drugs: day.drugs_count,
        //fights: day.fights_count,
        sentiment: day.sentiment_average
      })
    });
    this.setState({data: new_state});
  }

  componentDidMount() {
    this.getData('week');
  }

  render () {
    let series;
    series = this.state.show.map((item)=>{
      return <Line type='monotone' dataKey={item} stroke={this.state.color[item]} activeDot={{r: 6}}/>
    })
    return (
      <div className="col s12">
        <div className='buttons'> <p>Time Series</p>
          <button className="waves-effect waves-light btn" onClick={()=>this.getData('week')}>week</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.getData('month')}>month</button>
        </div>
        <LineChart width={900} height={500} data={this.state.data}
              margin={{top: 5, right: 5, left: 5, bottom: 5}}>
         <XAxis dataKey="date"/>
         <YAxis/>
         <CartesianGrid strokeDasharray="3 3"/>
         <Tooltip/>
         <Legend/>
         {series}
        </LineChart>
      </div>
    );
  }
}