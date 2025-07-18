# Inventory Management App

Cross-platform desktop application for fish/shrimp feed business inventory management with GST compliance.

## Features

- **Inventory Management**: Track products, stock levels, categories
- **Sales Management**: Create invoices with automatic GST calculations
- **Purchase Management**: Record supplier purchases, update stock
- **Customer & Supplier Management**: Maintain contact records
- **GST Compliance**: CGST/SGST/IGST calculations, HSN codes, GSTIN validation
- **Reports**: Sales, inventory, purchase, and GST reports
- **Cloud Backup**: MongoDB Atlas integration for data sync
- **Cross-Platform**: Windows, macOS, Linux support

## Tech Stack

- **Frontend**: React 18, React Router
- **Backend**: Electron, Node.js
- **Database**: SQLite (local), MongoDB Atlas (cloud backup)
- **Build**: Electron Builder
- **Currency**: Indian Rupee (₹) support

## Quick Start

### Prerequisites

- Node.js 16+ 
- npm or yarn

### Installation

```bash
# Clone or extract the project
cd inventory-management-app

# Install dependencies
npm install

# Start development server
npm start
```

### Building for Production

```bash
# Build for current platform
npm run dist

# Build for all platforms (Windows, macOS, Linux)
npm run dist-all

# Build without packaging (for testing)
npm run pack
```

### Distribution Files

After building, find your executables in the `dist/` folder:
- **Windows**: `.exe` installer or portable
- **macOS**: `.dmg` disk image
- **Linux**: `.AppImage` portable executable

## Configuration

### Environment Variables

Copy `.env.example` to `.env` and configure:

```env
MONGODB_URI=mongodb+srv://your-connection-string
MONGODB_DATABASE=inventory_management
```

### Company Settings

Configure your company information in the Settings page:
- Company details
- GSTIN and state code
- Default GST rates
- MongoDB connection for cloud backup

## Usage

### Getting Started

1. **Setup Company**: Go to Settings → Configure company information
2. **Add Categories**: Create product categories (Fish Feed, Shrimp Feed, etc.)
3. **Add Products**: Add your inventory items with pricing and stock
4. **Add Customers/Suppliers**: Maintain contact records
5. **Create Sales**: Generate invoices with automatic GST calculations
6. **Record Purchases**: Update inventory from supplier purchases
7. **View Reports**: Analyze sales, inventory, and tax reports

### GST Features

- Automatic CGST/SGST for same-state transactions
- Automatic IGST for inter-state transactions
- HSN code support for feed industry
- GSTIN validation
- GST reports for tax filing

### Data Management

- **Local Storage**: SQLite database stored in user data directory
- **Cloud Backup**: Optional MongoDB Atlas sync
- **Export**: JSON export for data portability
- **Import**: Restore from cloud or local backups

## Troubleshooting

### Build Issues

```bash
# Rebuild native dependencies
npm run electron-rebuild

# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install
```

### Database Issues

- Database location: `%APPDATA%/inventory-management-app/` (Windows)
- Delete `inventory.db` to reset all data
- Use cloud restore to recover from backup

### Performance

- Regularly sync to cloud for data safety
- Export data periodically for local backup
- Monitor disk space (database grows with transactions)

## Development

### Project Structure

```
├── public/
│   ├── electron.js          # Main Electron process
│   ├── preload.js          # Renderer-main bridge
│   ├── database.js         # SQLite operations
│   └── mongodb.js          # Cloud sync operations
├── src/
│   ├── components/         # React components
│   ├── pages/             # Main application pages
│   ├── context/           # React context for database
│   └── utils/             # GST and utility functions
└── dist/                  # Built executables
```

### Adding Features

1. **Database**: Update schema in `database.js`
2. **Frontend**: Add React components in `src/`
3. **Backend**: Add IPC handlers in `electron.js`
4. **Utils**: Add business logic in `utils/`

## Support

This application is designed for small to medium fish/shrimp feed businesses in India. It includes all necessary features for inventory management and GST compliance.

### Key Benefits

- **Offline-First**: Works without internet
- **Compliance Ready**: Built-in GST calculations
- **User Friendly**: Simple interface for business owners
- **Scalable**: Grows from small shops to distributors
- **Secure**: Local data with optional cloud backup

## License

MIT License - Free for commercial use

---

**Made for Fish & Shrimp Feed Industry in India** 🐟🦐
