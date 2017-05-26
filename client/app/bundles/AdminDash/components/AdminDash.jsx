import PropTypes from 'prop-types';
import React from 'react';
import UserPie from './UserPie.jsx'
import AgePie from './AgePie.jsx'
import LeftLayout from './LeftLayout.jsx'


export default class AdminDash extends React.Component {

  updateName = (name) => {
    this.setState({ name: name });
  };

  getName = () =>{
    const request = new Request(`http://localhost:3000/api/users/${this.state.currentUserId}`, {
      method: 'GET',
      credentials: 'same-origin',
      header: {'Content-Type': 'application/json'},
    })
    fetch(request)
    .then((res)=> res.json())
    .then(data =>{
      this.setState({user_profile: [data]});
    });
  }


  render() {
    return (
      <div className="row">
        <div className="col s5">
          <LeftLayout/>
        </div>
        <div className="col s4">
          <div className="row">
            <AgePie/>
            <UserPie/>
            <div className="col s3">
            Total user Count
            </div>
          </div>
        </div>
      </div>
    );
  }
}