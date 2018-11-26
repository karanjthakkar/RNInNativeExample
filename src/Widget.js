/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import { Text, View, TouchableOpacity, StyleSheet, NativeModules } from 'react-native';

export default class App extends Component {
  render() {
    return (
      <View style={styles.button}>
        <TouchableOpacity onPress={() => alert('I\'m in RN')}>
          <Text style={styles.text}>
            RN widget
          </Text>
        </TouchableOpacity>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  button: {
    flex: 1,
    backgroundColor: 'green',
    justifyContent: 'center',
    alignItems: 'center',
  },
  text: {
    fontSize: 18,
    color: 'white',
  }
});
