/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import { Text, View, TouchableOpacity, StyleSheet, NativeModules } from 'react-native';

export default class App extends Component {
  render() {
    if (this.props.presentation_type === 'MODAL') {
      return (
        <View style={styles.container}>
          <Text style={styles.heading}>
            React Native Modal Screen (from {this.props.opened_from})
          </Text>
          <View style={styles.button}>
            <TouchableOpacity onPress={() => {
              NativeModules.NavigationBridge.pop({
                'presentation_type': this.props.presentation_type
              });
            }}>
              <Text style={styles.text}>
                Go back
              </Text>
            </TouchableOpacity>
          </View>
        </View>
      );
    }
    return (
      <View style={styles.container}>
        <Text style={styles.heading}>
          React Native Screen (from {this.props.opened_from})
        </Text>
        <View style={styles.button}>
          <TouchableOpacity onPress={() => {
            NativeModules.NavigationBridge.push({
              'type': 'NATIVE'
            });
          }}>
            <Text style={styles.text}>
              Go to Native
            </Text>
          </TouchableOpacity>
        </View>
        <View style={styles.button}>
          <TouchableOpacity onPress={() => {
            NativeModules.NavigationBridge.push({
              'type': 'REACT_NATIVE'
            });
          }}>
            <Text style={styles.text}>
              Go to React Native
            </Text>
          </TouchableOpacity>
        </View>
        <View style={styles.button}>
          <TouchableOpacity onPress={() => {
            NativeModules.NavigationBridge.push({
              'type': 'REACT_NATIVE',
              'presentation_type': 'MODAL'
            });
          }}>
            <Text style={styles.text}>
              Go to React Native (Modal)
            </Text>
          </TouchableOpacity>
        </View>
        <View style={styles.button}>
          <TouchableOpacity onPress={() => {
            NativeModules.NavigationBridge.pop({});
          }}>
            <Text style={styles.text}>
              Go back
            </Text>
          </TouchableOpacity>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    marginTop: 94,
    paddingLeft: 20,
    backgroundColor: 'rgb(0, 255, 255)',
  },
  heading: {
    fontSize: 18,
  },
  button: {
    width: 240,
    height: 40,
    backgroundColor: 'blue',
    justifyContent: 'center',
    alignItems: 'center',
    marginTop: 20,
  },
  text: {
    fontSize: 18,
    color: 'white',
  }
});
