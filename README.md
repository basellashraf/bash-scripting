# System Administration Tool

Welcome to the **System Administration Tool** — a simple Bash script designed to help you manage users and groups on a Linux system through an interactive menu.

## 📂 **Features**
- **User Management:**
  - Add new users
  - Delete existing users
- **Group Management:**
  - Add new groups
  - Delete existing groups
- **Exit Option:** Cleanly exit the script when you're done

## 🛠️ **Usage**
1. **Run the script:**
```bash
bash script.sh
```

2. **Choose an option from the main menu:**
   - `1. Users`: Manage system users
   - `2. Groups`: Manage system groups
   - `3. Exit`: Close the tool

3. **Follow the prompts:**
   - Enter the username or group name as needed
   - Confirm actions, and the tool will handle everything

> ⚠️ **Note:** This script requires `sudo` permissions for adding or deleting users/groups.

## 🔧 **Example**
```
Hi!, Welcome to my System Administration tool
What do you want to do?
1) Users
2) Groups
3) Exit
Enter a number=> 1
```

## 🚀 **Future Enhancements**
- Add password setup for new users
- List existing users and groups
- Handle edge cases (e.g., duplicate names)

## 🤝 **Contributing**
Feel free to fork this repository and submit a pull request if you have improvements or new features in mind!
