import 'package:amr_app/models/Order.dart';
import 'package:amr_app/models/item.dart';
import 'package:amr_app/models/user.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper {
  static late Database dataBase;
  static String dbName = "AllOrders.db";
  static const String itemsTableName = "items";
  static const String userTableName = "users";
  static const String orderTableName = "orders";
  static const String userItemTableName = "UserItems";
  static const String orderUserTableName = "OrderUsers";

  static Future<void> initDB() async {
    dataBase = await openDatabase(
      dbName,
      version: 1,
      onCreate: (Database database, _) async {
        await onCreateDataBase(database: database);
      },
    );
  }

  static Future<void> onCreateDataBase({
    required Database database,
  }) async {
    await database.execute(
        'CREATE TABLE $itemsTableName(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, special TEXT, price DOUBLE)');
    await database.execute(
        'CREATE TABLE $userTableName(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, totalPrice DOUBLE, checkPrice DOUBLE, isCheck INTEGER,)');
    await database.execute(
        'CREATE TABLE $orderTableName(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, date DATETIME, totalPrice DOUBLE, deliveryPrice DOUBLE,)');
    await database.execute(
        'CREATE TABLE $userItemTableName(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, user_id INTEGER FOREIGN KEY REFERENCES $userTableName (id), item_id INTEGER FOREIGN KEY REFERENCES $itemsTableName (id))');

    await database.execute(
        'CREATE TABLE $orderUserTableName(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, user_id INTEGER FOREIGN KEY REFERENCES $userTableName (id), order_id INTEGER FOREIGN KEY REFERENCES $orderTableName (id))');
  }

  static Future<void> closeDataBase() async {
    return await dataBase.close();
  }

  static Future<void> insertItem({
    required Item item,
  }) async {
    await initDB();
    await dataBase.rawInsert(
      'INSERT INTO $itemsTableName(name, special, price) VALUES(?, ?, ?)',
      [
        item.name,
        item.special,
        item.price,
      ],
    );
  }

  static Future<void> insertUser({
    required User user,
  }) async {
    await initDB();
    await dataBase.rawInsert(
      'INSERT INTO $userTableName(name, totalPrice, checkPrice, isCheck) VALUES(?, ?, ?, ?)',
      [
        user.name,
        user.totalPrice,
        user.checkPrice,
        user.isCheck,
      ],
    );
  }

  static Future<void> insertOrder({
    required Order order,
  }) async {
    await initDB();
    await dataBase.rawInsert(
      'INSERT INTO $orderTableName( date, totalPrice, deliveryPrice) VALUES(?, ?, ?)',
      [
        order.date,
        order.total,
        order.deliveryPrice,
      ],
    );
  }

  static Future<void> insertOrderUser({
    required int userId,
    required int orderId,
  }) async {
    await initDB();
    await dataBase.rawInsert(
      'INSERT INTO $orderUserTableName(user_id, order_id) VALUES(?, ?)',
      [
        userId,
        orderId,
      ],
    );
  }

  static Future<void> insertUserItem({
    required int userId,
    required int itemId,
  }) async {
    await initDB();
    await dataBase.rawInsert(
      'INSERT INTO $orderUserTableName(user_id, item_id) VALUES(?, ?)',
      [
        userId,
        itemId,
      ],
    );
  }

  static Future<List<Map<String, dynamic>>> getDataOfTable({
    required String tableName,
  }) async {
    await initDB();
    return await dataBase.rawQuery('SELECT * FROM $tableName');
  }

  static Future<List<Map<String, dynamic>>> getDataOfTableWithId({
    required String tableName,
    required int id,
  }) async {
    await initDB();
    return await dataBase.rawQuery('SELECT * FROM $tableName WHERE id = $id');
  }

  static Future<List<Map<String, dynamic>>> getDataOfUser({
    required String tableName,
    required int id,
    required String colName,
  }) async {
    await initDB();
    return await dataBase
        .rawQuery('SELECT * FROM $tableName WHERE $colName = $id');
  }

  static Future<void> deleteRecorde({
    required String tableName,
    required int id,
  }) async {
    await initDB();
    await dataBase.rawDelete(
      'DELETE FROM $tableName WHERE id = ?',
      [
        id,
      ],
    );
  }

  static Future<void> updateTable({
    required String tableName,
    required String colName,
    required int id,
    required dynamic val,
  }) async {
    await initDB();
    await dataBase.rawUpdate(
      'UPDATE $tableName SET $colName = ? WHERE id = ?',
      [
        val,
        id,
      ],
    );
  }
}
