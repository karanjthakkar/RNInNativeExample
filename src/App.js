/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import { Text, View, TouchableOpacity, StyleSheet } from 'react-native';

export default class App extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.heading}>
          React Native Screen (from {this.props.opened_from})
        </Text>
        <View style={styles.button}>
          <TouchableOpacity onPress={() => {

          }}>
            <Text style={styles.text}>
              Go to Native
            </Text>
          </TouchableOpacity>
        </View>
        <View style={styles.button}>
          <TouchableOpacity onPress={() => {
            
          }}>
            <Text style={styles.text}>
              Go to React Native
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
    marginTop: 74,
    marginLeft: 20,
  },
  heading: {
    fontSize: 18,
  },
  button: {
    width: 200,
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
