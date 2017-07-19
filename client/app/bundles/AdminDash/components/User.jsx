import React from 'react';

export default class User extends React.Component {

  render () {
    let elementClass;
    if (this.props.selectedUser == this.props.user.id){
      elementClass = 'collection-item user active';
    } else {
      elementClass = 'collection-item user';
    }
    return(
      <a href="#!" className={elementClass} onClick={() => {this.props.clickHandler(this.props.user.id)}}>
        <li className="collection-item avatar">
        <img src={`/uploads/${this.props.user.picture}`} alt="" className="circle"/>
        <span className="title-username">{this.props.user.name}</span>
        </li>
      </a>
    )
  }
}


