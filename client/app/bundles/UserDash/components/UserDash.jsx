import PropTypes from 'prop-types';
import React from 'react';
import SimpleMap from './SimpleMap.jsx'



export default class UserDash extends React.Component {



  /**
   * @param props - Comes from your rails view.
   * @param _railsContext - Comes from React on Rails
   */

  render() {
    return (
      <div>
<SimpleMap style ={{
      width: 100,
      height: 100,}}/>
</div>
    )
  }
}