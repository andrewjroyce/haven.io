import React from 'react';
import User from './User.jsx';


export default class UserList extends React.Component {

    constructor(props) {
      super(props);
      this.state = {users: []};
  }

  pullUsers = (param) => {
    const request = new Request(`http://localhost:3000/api/users`, {
      method: 'GET',
      credentials: 'same-origin',
      header: {'Content-Type': 'application.json'},
    })
    fetch(request)
    .then((res) => res.json())
    .then(data => {this.handleResponse(data)})
  }

  handleResponse = (data) => {
    this.setState({users: data});
  }

  componentDidMount() {
    this.pullUsers();
  }

  render () {
    return(
      <div className="collection users">
        {this.state.users.map( user => {
            return <User selectedUser={this.props.selectedUser} key={user.id} user={user} clickHandler={this.props.clickHandler}/>
          })
        }
      </div>
    )
  }
}
