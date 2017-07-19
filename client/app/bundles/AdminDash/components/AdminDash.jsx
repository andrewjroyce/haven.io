import PropTypes from 'prop-types';
import React from 'react';
import UserPie from './UserPie.jsx';
import AgePie from './AgePie.jsx';
import LeftLayout from './LeftLayout.jsx';
import TimeSeries from './TimeSeries.jsx';

export default class AdminDash extends React.Component {
  render() {
    return (
      <div className="row">
          <LeftLayout/>
        <div className="col s8">
          <div className="row age-user-pie">
            <div className="col s6 agepie">
             <p>Status by Age</p>
              <AgePie/>
            </div>
            <div className="col s5 userpie">
              <UserPie/>
            </div>
          </div>
          <div className="row timeseries">
            <TimeSeries/>
          </div>
        </div>
      </div>
    );
  }
}