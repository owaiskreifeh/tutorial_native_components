import React, {Component} from 'react';
import {requireNativeComponent} from 'react-native';

const RCTProfileView = requireNativeComponent('RCTProfileView');

export default class ProfileView extends Component {
  render() {
    return <RCTProfileView {...this.props} />;
  }
}
