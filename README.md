# Mocking Bites: Unit Testing Parent-Child Classes

This repository contains a guide and exercises for learning how to  unit test parent-child classes using mocking techniques in Ruby with RSpec. The goal is to be able to test the parent class in isolation, without depending on the child class.

## Overview

A parent-child relationship between classes is one where a single class manages a list of other classes. For example, a Diary class managing many DiaryEntry instances. To test the parent class in isolation, we use mocking techique, which involve creating fake child class instances for testing purposes.

## Prerequisites

- Ruby installed on your system
- Basic understanding of Ruby classes and objects
- familiairity with RSpec testing framework

## Getting Started
1. Clone this repository to your local machine
2. Navigate to the 'mocking_bites' directory in your terminal
3. Run 'bundle install' to install RSpec and other dependencies
4. Run 'rspec' to run the example tests

## Exercise and Challenge

The exercise and challenge files are included here as the following:
- 'lib/task_list.rb': contains the TaskList class (parent class) and  Task class (child class) design
- 'spec/task_list_spec.rb': Contains the initial tests for TaskList class
Also check on the 'diary.rb, task.rb' in the 'lib' folder as well as the files under the 'spec' folder for your exercises

## Collaborators: 
Matt Hammond and Chayada Sansiriwong