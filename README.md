# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: unhandled exceptions in asynchronous operations. The `bug.dart` file shows code that uses `Future` and `async`/`await` but doesn't handle exceptions properly.  The `bugSolution.dart` file provides the corrected version.

## Problem

Asynchronous operations (like network requests) can throw exceptions.  If these exceptions aren't caught, they can lead to crashes or unexpected behavior.  The original code demonstrates this by throwing a simulated network error and a TimeoutException.  The TimeoutException is rethrown to be handled at a higher level, demonstrating proper exception handling structure. 

## Solution

The solution involves using `try-catch` blocks to handle exceptions gracefully.  The solution demonstrates handling different types of exceptions (SocketException, TimeoutException, and generic Exception) separately and rethrowing TimeoutException to be caught by main function. 
