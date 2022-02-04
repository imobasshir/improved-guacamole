# FLUTTER NOTES

## 05-02-2022

### 00:48

To get the data from internet or to fetch the data

- Firstly we have to create the class for api according to the data and make the constructor of it.
- Then create Future<List<ClassName>> getReqiredData() async {}
  function in this function get response using
  in this case our api is [API](https://jsonplaceholder.typicode.com/users)

```
var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users');
```

and then convert the model (List of model) using map as

```
List<User> users = jsonData.map((data) => User.fromJson(data)).toList();
```

where jsonData is

```
    List jsonData = json.decode(response.body);
```

then return users

```
return users;
```

- Now display data on the screen using Future Builder

## 01-02-2022

### 23:43

To call a funtion on click
we can use Funtion callback by creating constructor and fuction call is done when it
is reqired

## 31-01-2022

### 20:41

#### Set State

it is important funtionality in fluttter which is used to change the state from
current state to new state on callback of some thing like button pressed it is done
only in presence of stateful widget

## 30-01-2022

### 00:50

#### To print the data on screen of a static app

for this we have to make a list or a map
in case we use list and then we first create constuructor of item we want to create
then call them in list i.e., constructor and assigin the value to them
and then map it to which ever widget we want to map with the help of
list_variable_name.map().toList() funtion and then
return the things in form of appropriate widget where we want to show on screen.

### 01:24

#### String Interpolation

'\$$'

Alternative to to string
'${text to be printed}'

```

```
