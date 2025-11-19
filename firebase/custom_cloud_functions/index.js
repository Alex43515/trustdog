const admin = require("firebase-admin/app");
admin.initializeApp();

const fetchFromAlgolia = require("./fetch_from_algolia.js");
exports.fetchFromAlgolia = fetchFromAlgolia.fetchFromAlgolia;
