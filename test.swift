import SwiftUI

struct ContentView: View {
    
    // The full SalemX code as a raw string
    let salemXCode = """
<include>html</include> # format that will be added
<include>js</include> # Add JavaScript
<include>bash</include> # add bash
<include>python</include>
<include>swift</include>
<include>cpp</include>  # Add C++ support
<include>xml</include>
<include>SalemC</include>   <!-- Enable SalemC support in SalemX -->

<string> # string
    <pet>cat</pet> # internal string pet=cat
</string>

<output>pet</output> # Outputs string pet=cat

<html> # HTML code body
    <p>My First Paragraph</p>
</html>

<js> # Javascript
    const url = "https://www.google.com";
const duration = 5000; // 5 seconds
const intervalTime = 1000; // 1 second

let elapsed = 0;

const interval = setInterval(() => {
  fetch(url, { method: 'GET', mode: 'no-cors' })
    .then(() => console.log("Pinged Google"))
    .catch(err => console.log("Error pinging Google:", err));

  elapsed += intervalTime;
  if (elapsed >= duration) {
    clearInterval(interval);
    console.log("Stopped pinging after 5 seconds");
  }
}, intervalTime);
</js>

<bash> # Linux Bash 
    sudo ping google.com
</bash>
<python> # Python
# Define a variable
pet = "cat"

# Print the variable
print("My pet is:", pet)
</python>

<swift>
import Foundation

// Define a variable
let pet = "cat"

// Print the variable
print("My pet is: \\(pet)")
</swift>

<output>swift</output>  # Outputs the result of the Swift block

<cpp>
#include <iostream>
#include <string>

int main() {
    std::string pet = "cat";
    std::cout << "My pet is: " << pet << std::endl;
    return 0;
}
</cpp>

<output>cpp</output>  # Outputs the result of the C++ block

<!-- ...and so on for all the rest of the blocks ... -->
"""

    var body: some View {
        ScrollView {
            Text(salemXCode)
                .font(.system(.body, design: .monospaced))
                .padding()
                .textSelection(.enabled) // allow copying
        }
        .navigationTitle("SalemX Code")
    }
}

@main
struct SalemXViewerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
