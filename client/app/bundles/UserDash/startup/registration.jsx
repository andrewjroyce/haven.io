import ReactOnRails from 'react-on-rails';
import UserDash from '../components/UserDash';
import ReactDOM from 'react-dom';

// const UserDash = (props) => (<UserDash {...props} />); 
 // This is how react_on_rails loads the component to the broswer nested inside the rails app.
ReactOnRails.register({
  UserDash,
});
