#!/bin/bash

# Path to your JavaFX lib directory
JAVAFX_LIB_PATH="/Users/Armin/Desktop/java-for-kids/HelloFX/HelloFX/lib/lib"

# Run the application with JavaFX modules
java --module-path "$JAVAFX_LIB_PATH" \
     --add-modules=javafx.controls,javafx.fxml,javafx.base,javafx.graphics \
     -cp bin \
     HelloFX
