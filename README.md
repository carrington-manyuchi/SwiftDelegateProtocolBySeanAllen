# Delegates
- Delegates are used to move objects from destinationVC to the SourceVC
- In iOS we cannot send objects backwards the same way we send them forward hence that is the problem delegates solve
- A function called in one class but runs in another which allows legal sharing of data.
- Sneaky ways of moving data between controllers  that shouldn't share data.
- They are the most used and best way to move data between VCs.

# Protocols
- A skeleton class where we declare methods but never implements them.

# Steps in Creating Delegates

 # In DestinationVC
 1. Create a protocol with parameters that you are going to pass back.
 2. Initialize a delegate thus declare a property delegate and make it a type of a protocol. Mark it as optional
 3. Type delegate and select the suitable method type. In other words where you are navigating to the SourceVC, add delegate with relevant method for example delegate?.didSelect(name: "iPhone, imageName: "ipad")

  # In SourceVC
  In SourceVC we would like to receive the parameters and display them
  1. Adopt the delegate in the class, if possible create an extension.
  2. Add stubs and relevant code
  3. In the SourceVC look where you have access to the DestinationVC and assign the delegate to self thus you will be telling or linking the DestinationVC with where the protocol has been defined.
