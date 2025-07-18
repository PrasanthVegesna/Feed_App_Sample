# 🗄️ Database Management Guide

## Database Behavior

### ✅ **Normal Startup (Data Preserved)**
```bash
npm start
```
- **Keeps all your data** - inventory, sales, purchases, etc.
- **Database persists** between app sessions
- **Safe for production use**

### 🔄 **Fresh Start (Reset Database)**
```bash
npm run start-fresh
```
- **Deletes all data** and creates clean database
- **Use only when you want to start over**
- **Good for testing or troubleshooting**

## Database Location

Your database is stored at:
```
C:\Users\[username]\AppData\Roaming\inventory-management-app\inventory.db
```

## Key Points

- ✅ **Data is safe** - Regular startup preserves all data
- 🔄 **Reset when needed** - Use `npm run start-fresh` to clear everything
- 💾 **Automatic backup** - Consider setting up MongoDB sync for cloud backup
- 🛡️ **Data location** - Database is stored in user's AppData folder

## Usage Examples

**Day-to-day use:**
```bash
npm start  # Your data stays safe
```

**Need to reset everything:**
```bash
npm run start-fresh  # WARNING: This deletes all data!
```

**For development/testing:**
```bash
npm run dev-fresh  # Clean slate for testing
```

## ⚠️ Important Notes

- **Regular `npm start`** = Safe, keeps all data
- **`npm run start-fresh`** = Dangerous, deletes everything
- **Always backup** important data before using fresh start
- **Database location** is in your user profile, not the app folder
