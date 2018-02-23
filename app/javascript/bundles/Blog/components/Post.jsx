import PropTypes from 'prop-types';
import React from 'react';

export default class Post extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: this.props.title,
      body: this.props.body,
      createdAd: this.props.created_at
    };
  };

  render() {
    return (
      <div>
        <h3>
          {this.state.title}
        </h3>
        <hr />
        <p>
          {this.state.body}
        </p>
     </div>
    );
  }
}
