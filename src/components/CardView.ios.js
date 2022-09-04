import React, {Component} from 'react';
import {requireNativeComponent} from 'react-native';

const RCTCardView = requireNativeComponent('RCTCardView');

export default class CardView extends Component {
  _onClick = event => {
    console.log('pres here');
    if (!this.props.onClick) {
      return;
    }
    console.log({event});
    // process raw event...
    this.props.onClick(event.nativeEvent);
  };
  render() {
    return <RCTCardView {...this.props} onPress={this._onClick} />;
  }
}
