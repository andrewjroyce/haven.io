import React from 'react';
import User from './User.jsx';


class Avatar extends React.Component {
  render() {
    var image = this.props.image,
        style = {
          width: this.props.width || 50,
          height: this.props.height || 50
        }; 
    
    if (!image) return null;
    
    return (
     <div className="avatar" style={style}>
           <img src={this.props.image} /> 
      </div>
    );
  }
}

class MainPanel extends React.Component {

  render() {
    var info = this.props.info;
    if (!info) return null;
    
    return (
     <div>
        <div className="top">
            <Avatar 
               image={info.photo} 
               width={100}
               height={100}
            /> 
            <h2>{info.name}</h2>
            <h3>{info.location}</h3>
          <hr />
            <p>{info.gender} | {info.age}</p>
        </div>
        
        <div className="bottom">
          <p>{info.bio}</p>
        </div>
      </div>
    );
  }
}

export default class UserProfile extends React.Component {
  render() {
    console.log(this.props.data)
    return (
      <div id="user-profile">
        <MainPanel info={this.props.data} />
      </div>
    )
  }
}