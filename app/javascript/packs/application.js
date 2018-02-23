import ReactOnRails from 'react-on-rails';
import Header from '../bundles/Common/components/Header';
import Post from '../bundles/Blog/components/Post';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Header,
  Post,
});
