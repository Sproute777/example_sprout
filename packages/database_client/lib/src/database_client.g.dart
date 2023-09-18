// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_client.dart';

// ignore_for_file: type=lint
class $UserTable extends User with TableInfo<$UserTable, UserEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _websiteMeta =
      const VerificationMeta('website');
  @override
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
      'website', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, username, name, email, phone, website, createdAt];
  @override
  String get aliasedName => _alias ?? 'user';
  @override
  String get actualTableName => 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      website: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }
}

class UserEntry extends DataClass implements Insertable<UserEntry> {
  final int id;
  final String username;
  final String? name;
  final String? email;
  final String? phone;
  final String? website;
  final DateTime createdAt;
  const UserEntry(
      {required this.id,
      required this.username,
      this.name,
      this.email,
      this.phone,
      this.website,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['username'] = Variable<String>(username);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || website != null) {
      map['website'] = Variable<String>(website);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      username: Value(username),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      website: website == null && nullToAbsent
          ? const Value.absent()
          : Value(website),
      createdAt: Value(createdAt),
    );
  }

  factory UserEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserEntry(
      id: serializer.fromJson<int>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      name: serializer.fromJson<String?>(json['name']),
      email: serializer.fromJson<String?>(json['email']),
      phone: serializer.fromJson<String?>(json['phone']),
      website: serializer.fromJson<String?>(json['website']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'username': serializer.toJson<String>(username),
      'name': serializer.toJson<String?>(name),
      'email': serializer.toJson<String?>(email),
      'phone': serializer.toJson<String?>(phone),
      'website': serializer.toJson<String?>(website),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  UserEntry copyWith(
          {int? id,
          String? username,
          Value<String?> name = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> phone = const Value.absent(),
          Value<String?> website = const Value.absent(),
          DateTime? createdAt}) =>
      UserEntry(
        id: id ?? this.id,
        username: username ?? this.username,
        name: name.present ? name.value : this.name,
        email: email.present ? email.value : this.email,
        phone: phone.present ? phone.value : this.phone,
        website: website.present ? website.value : this.website,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('UserEntry(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, username, name, email, phone, website, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserEntry &&
          other.id == this.id &&
          other.username == this.username &&
          other.name == this.name &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.website == this.website &&
          other.createdAt == this.createdAt);
}

class UserCompanion extends UpdateCompanion<UserEntry> {
  final Value<int> id;
  final Value<String> username;
  final Value<String?> name;
  final Value<String?> email;
  final Value<String?> phone;
  final Value<String?> website;
  final Value<DateTime> createdAt;
  const UserCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.website = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  UserCompanion.insert({
    this.id = const Value.absent(),
    required String username,
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.website = const Value.absent(),
    required DateTime createdAt,
  })  : username = Value(username),
        createdAt = Value(createdAt);
  static Insertable<UserEntry> custom({
    Expression<int>? id,
    Expression<String>? username,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? website,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (website != null) 'website': website,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  UserCompanion copyWith(
      {Value<int>? id,
      Value<String>? username,
      Value<String?>? name,
      Value<String?>? email,
      Value<String?>? phone,
      Value<String?>? website,
      Value<DateTime>? createdAt}) {
    return UserCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $AddressTable extends Address
    with TableInfo<$AddressTable, AddressEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
      'street', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _suiteMeta = const VerificationMeta('suite');
  @override
  late final GeneratedColumn<String> suite = GeneratedColumn<String>(
      'suite', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _zipcodeMeta =
      const VerificationMeta('zipcode');
  @override
  late final GeneratedColumn<String> zipcode = GeneratedColumn<String>(
      'zipcode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<int> user = GeneratedColumn<int>(
      'user', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, street, suite, city, zipcode, user];
  @override
  String get aliasedName => _alias ?? 'address';
  @override
  String get actualTableName => 'address';
  @override
  VerificationContext validateIntegrity(Insertable<AddressEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    }
    if (data.containsKey('suite')) {
      context.handle(
          _suiteMeta, suite.isAcceptableOrUnknown(data['suite']!, _suiteMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('zipcode')) {
      context.handle(_zipcodeMeta,
          zipcode.isAcceptableOrUnknown(data['zipcode']!, _zipcodeMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AddressEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AddressEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      street: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}street']),
      suite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}suite']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      zipcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zipcode']),
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user']),
    );
  }

  @override
  $AddressTable createAlias(String alias) {
    return $AddressTable(attachedDatabase, alias);
  }
}

class AddressEntry extends DataClass implements Insertable<AddressEntry> {
  final int id;
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final int? user;
  const AddressEntry(
      {required this.id,
      this.street,
      this.suite,
      this.city,
      this.zipcode,
      this.user});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || street != null) {
      map['street'] = Variable<String>(street);
    }
    if (!nullToAbsent || suite != null) {
      map['suite'] = Variable<String>(suite);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || zipcode != null) {
      map['zipcode'] = Variable<String>(zipcode);
    }
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<int>(user);
    }
    return map;
  }

  AddressCompanion toCompanion(bool nullToAbsent) {
    return AddressCompanion(
      id: Value(id),
      street:
          street == null && nullToAbsent ? const Value.absent() : Value(street),
      suite:
          suite == null && nullToAbsent ? const Value.absent() : Value(suite),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      zipcode: zipcode == null && nullToAbsent
          ? const Value.absent()
          : Value(zipcode),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
    );
  }

  factory AddressEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AddressEntry(
      id: serializer.fromJson<int>(json['id']),
      street: serializer.fromJson<String?>(json['street']),
      suite: serializer.fromJson<String?>(json['suite']),
      city: serializer.fromJson<String?>(json['city']),
      zipcode: serializer.fromJson<String?>(json['zipcode']),
      user: serializer.fromJson<int?>(json['user']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'street': serializer.toJson<String?>(street),
      'suite': serializer.toJson<String?>(suite),
      'city': serializer.toJson<String?>(city),
      'zipcode': serializer.toJson<String?>(zipcode),
      'user': serializer.toJson<int?>(user),
    };
  }

  AddressEntry copyWith(
          {int? id,
          Value<String?> street = const Value.absent(),
          Value<String?> suite = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> zipcode = const Value.absent(),
          Value<int?> user = const Value.absent()}) =>
      AddressEntry(
        id: id ?? this.id,
        street: street.present ? street.value : this.street,
        suite: suite.present ? suite.value : this.suite,
        city: city.present ? city.value : this.city,
        zipcode: zipcode.present ? zipcode.value : this.zipcode,
        user: user.present ? user.value : this.user,
      );
  @override
  String toString() {
    return (StringBuffer('AddressEntry(')
          ..write('id: $id, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('user: $user')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, street, suite, city, zipcode, user);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressEntry &&
          other.id == this.id &&
          other.street == this.street &&
          other.suite == this.suite &&
          other.city == this.city &&
          other.zipcode == this.zipcode &&
          other.user == this.user);
}

class AddressCompanion extends UpdateCompanion<AddressEntry> {
  final Value<int> id;
  final Value<String?> street;
  final Value<String?> suite;
  final Value<String?> city;
  final Value<String?> zipcode;
  final Value<int?> user;
  const AddressCompanion({
    this.id = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
    this.user = const Value.absent(),
  });
  AddressCompanion.insert({
    this.id = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
    this.user = const Value.absent(),
  });
  static Insertable<AddressEntry> custom({
    Expression<int>? id,
    Expression<String>? street,
    Expression<String>? suite,
    Expression<String>? city,
    Expression<String>? zipcode,
    Expression<int>? user,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (street != null) 'street': street,
      if (suite != null) 'suite': suite,
      if (city != null) 'city': city,
      if (zipcode != null) 'zipcode': zipcode,
      if (user != null) 'user': user,
    });
  }

  AddressCompanion copyWith(
      {Value<int>? id,
      Value<String?>? street,
      Value<String?>? suite,
      Value<String?>? city,
      Value<String?>? zipcode,
      Value<int?>? user}) {
    return AddressCompanion(
      id: id ?? this.id,
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      user: user ?? this.user,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (suite.present) {
      map['suite'] = Variable<String>(suite.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (zipcode.present) {
      map['zipcode'] = Variable<String>(zipcode.value);
    }
    if (user.present) {
      map['user'] = Variable<int>(user.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressCompanion(')
          ..write('id: $id, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('user: $user')
          ..write(')'))
        .toString();
  }
}

class $AlbumTable extends Album with TableInfo<$AlbumTable, AlbumEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AlbumTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<int> user = GeneratedColumn<int>(
      'user', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, title, user];
  @override
  String get aliasedName => _alias ?? 'album';
  @override
  String get actualTableName => 'album';
  @override
  VerificationContext validateIntegrity(Insertable<AlbumEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AlbumEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AlbumEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user']),
    );
  }

  @override
  $AlbumTable createAlias(String alias) {
    return $AlbumTable(attachedDatabase, alias);
  }
}

class AlbumEntry extends DataClass implements Insertable<AlbumEntry> {
  final int id;
  final String title;
  final int? user;
  const AlbumEntry({required this.id, required this.title, this.user});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<int>(user);
    }
    return map;
  }

  AlbumCompanion toCompanion(bool nullToAbsent) {
    return AlbumCompanion(
      id: Value(id),
      title: Value(title),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
    );
  }

  factory AlbumEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AlbumEntry(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      user: serializer.fromJson<int?>(json['user']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'user': serializer.toJson<int?>(user),
    };
  }

  AlbumEntry copyWith(
          {int? id, String? title, Value<int?> user = const Value.absent()}) =>
      AlbumEntry(
        id: id ?? this.id,
        title: title ?? this.title,
        user: user.present ? user.value : this.user,
      );
  @override
  String toString() {
    return (StringBuffer('AlbumEntry(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('user: $user')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, user);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AlbumEntry &&
          other.id == this.id &&
          other.title == this.title &&
          other.user == this.user);
}

class AlbumCompanion extends UpdateCompanion<AlbumEntry> {
  final Value<int> id;
  final Value<String> title;
  final Value<int?> user;
  const AlbumCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.user = const Value.absent(),
  });
  AlbumCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.user = const Value.absent(),
  }) : title = Value(title);
  static Insertable<AlbumEntry> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? user,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (user != null) 'user': user,
    });
  }

  AlbumCompanion copyWith(
      {Value<int>? id, Value<String>? title, Value<int?>? user}) {
    return AlbumCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      user: user ?? this.user,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (user.present) {
      map['user'] = Variable<int>(user.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlbumCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('user: $user')
          ..write(')'))
        .toString();
  }
}

class $CompanyTable extends Company
    with TableInfo<$CompanyTable, CompanyEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompanyTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _catchPhraseMeta =
      const VerificationMeta('catchPhrase');
  @override
  late final GeneratedColumn<String> catchPhrase = GeneratedColumn<String>(
      'catch_phrase', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bsMeta = const VerificationMeta('bs');
  @override
  late final GeneratedColumn<String> bs = GeneratedColumn<String>(
      'bs', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<int> user = GeneratedColumn<int>(
      'user', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, name, catchPhrase, bs, user];
  @override
  String get aliasedName => _alias ?? 'company';
  @override
  String get actualTableName => 'company';
  @override
  VerificationContext validateIntegrity(Insertable<CompanyEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('catch_phrase')) {
      context.handle(
          _catchPhraseMeta,
          catchPhrase.isAcceptableOrUnknown(
              data['catch_phrase']!, _catchPhraseMeta));
    }
    if (data.containsKey('bs')) {
      context.handle(_bsMeta, bs.isAcceptableOrUnknown(data['bs']!, _bsMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompanyEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompanyEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      catchPhrase: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}catch_phrase']),
      bs: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bs']),
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user']),
    );
  }

  @override
  $CompanyTable createAlias(String alias) {
    return $CompanyTable(attachedDatabase, alias);
  }
}

class CompanyEntry extends DataClass implements Insertable<CompanyEntry> {
  final int id;
  final String? name;
  final String? catchPhrase;
  final String? bs;
  final int? user;
  const CompanyEntry(
      {required this.id, this.name, this.catchPhrase, this.bs, this.user});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || catchPhrase != null) {
      map['catch_phrase'] = Variable<String>(catchPhrase);
    }
    if (!nullToAbsent || bs != null) {
      map['bs'] = Variable<String>(bs);
    }
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<int>(user);
    }
    return map;
  }

  CompanyCompanion toCompanion(bool nullToAbsent) {
    return CompanyCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      catchPhrase: catchPhrase == null && nullToAbsent
          ? const Value.absent()
          : Value(catchPhrase),
      bs: bs == null && nullToAbsent ? const Value.absent() : Value(bs),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
    );
  }

  factory CompanyEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompanyEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      catchPhrase: serializer.fromJson<String?>(json['catchPhrase']),
      bs: serializer.fromJson<String?>(json['bs']),
      user: serializer.fromJson<int?>(json['user']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'catchPhrase': serializer.toJson<String?>(catchPhrase),
      'bs': serializer.toJson<String?>(bs),
      'user': serializer.toJson<int?>(user),
    };
  }

  CompanyEntry copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> catchPhrase = const Value.absent(),
          Value<String?> bs = const Value.absent(),
          Value<int?> user = const Value.absent()}) =>
      CompanyEntry(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        catchPhrase: catchPhrase.present ? catchPhrase.value : this.catchPhrase,
        bs: bs.present ? bs.value : this.bs,
        user: user.present ? user.value : this.user,
      );
  @override
  String toString() {
    return (StringBuffer('CompanyEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs, ')
          ..write('user: $user')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, catchPhrase, bs, user);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.catchPhrase == this.catchPhrase &&
          other.bs == this.bs &&
          other.user == this.user);
}

class CompanyCompanion extends UpdateCompanion<CompanyEntry> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> catchPhrase;
  final Value<String?> bs;
  final Value<int?> user;
  const CompanyCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.catchPhrase = const Value.absent(),
    this.bs = const Value.absent(),
    this.user = const Value.absent(),
  });
  CompanyCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.catchPhrase = const Value.absent(),
    this.bs = const Value.absent(),
    this.user = const Value.absent(),
  });
  static Insertable<CompanyEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? catchPhrase,
    Expression<String>? bs,
    Expression<int>? user,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (catchPhrase != null) 'catch_phrase': catchPhrase,
      if (bs != null) 'bs': bs,
      if (user != null) 'user': user,
    });
  }

  CompanyCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? catchPhrase,
      Value<String?>? bs,
      Value<int?>? user}) {
    return CompanyCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
      user: user ?? this.user,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (catchPhrase.present) {
      map['catch_phrase'] = Variable<String>(catchPhrase.value);
    }
    if (bs.present) {
      map['bs'] = Variable<String>(bs.value);
    }
    if (user.present) {
      map['user'] = Variable<int>(user.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs, ')
          ..write('user: $user')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings
    with TableInfo<$SettingsTable, SettingsEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? 'settings';
  @override
  String get actualTableName => 'settings';
  @override
  VerificationContext validateIntegrity(Insertable<SettingsEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingsEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingsEntry(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class SettingsEntry extends DataClass implements Insertable<SettingsEntry> {
  final String key;
  final String value;
  const SettingsEntry({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      key: Value(key),
      value: Value(value),
    );
  }

  factory SettingsEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingsEntry(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  SettingsEntry copyWith({String? key, String? value}) => SettingsEntry(
        key: key ?? this.key,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('SettingsEntry(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingsEntry &&
          other.key == this.key &&
          other.value == this.value);
}

class SettingsCompanion extends UpdateCompanion<SettingsEntry> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const SettingsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  })  : key = Value(key),
        value = Value(value);
  static Insertable<SettingsEntry> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsCompanion copyWith(
      {Value<String>? key, Value<String>? value, Value<int>? rowid}) {
    return SettingsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HistoryLogTable extends HistoryLog
    with TableInfo<$HistoryLogTable, HistoryLogEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HistoryLogTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, date, name];
  @override
  String get aliasedName => _alias ?? 'history_log';
  @override
  String get actualTableName => 'history_log';
  @override
  VerificationContext validateIntegrity(Insertable<HistoryLogEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HistoryLogEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HistoryLogEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $HistoryLogTable createAlias(String alias) {
    return $HistoryLogTable(attachedDatabase, alias);
  }
}

class HistoryLogEntry extends DataClass implements Insertable<HistoryLogEntry> {
  final int id;
  final DateTime date;
  final String name;
  const HistoryLogEntry(
      {required this.id, required this.date, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<DateTime>(date);
    map['name'] = Variable<String>(name);
    return map;
  }

  HistoryLogCompanion toCompanion(bool nullToAbsent) {
    return HistoryLogCompanion(
      id: Value(id),
      date: Value(date),
      name: Value(name),
    );
  }

  factory HistoryLogEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HistoryLogEntry(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
      'name': serializer.toJson<String>(name),
    };
  }

  HistoryLogEntry copyWith({int? id, DateTime? date, String? name}) =>
      HistoryLogEntry(
        id: id ?? this.id,
        date: date ?? this.date,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('HistoryLogEntry(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, date, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HistoryLogEntry &&
          other.id == this.id &&
          other.date == this.date &&
          other.name == this.name);
}

class HistoryLogCompanion extends UpdateCompanion<HistoryLogEntry> {
  final Value<int> id;
  final Value<DateTime> date;
  final Value<String> name;
  const HistoryLogCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.name = const Value.absent(),
  });
  HistoryLogCompanion.insert({
    this.id = const Value.absent(),
    required DateTime date,
    required String name,
  })  : date = Value(date),
        name = Value(name);
  static Insertable<HistoryLogEntry> custom({
    Expression<int>? id,
    Expression<DateTime>? date,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (name != null) 'name': name,
    });
  }

  HistoryLogCompanion copyWith(
      {Value<int>? id, Value<DateTime>? date, Value<String>? name}) {
    return HistoryLogCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HistoryLogCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $CivsTable extends Civs with TableInfo<$CivsTable, CivEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CivsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'civs';
  @override
  String get actualTableName => 'civs';
  @override
  VerificationContext validateIntegrity(Insertable<CivEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CivEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CivEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
    );
  }

  @override
  $CivsTable createAlias(String alias) {
    return $CivsTable(attachedDatabase, alias);
  }
}

class CivEntry extends DataClass implements Insertable<CivEntry> {
  final int id;
  final String? name;
  const CivEntry({required this.id, this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  CivsCompanion toCompanion(bool nullToAbsent) {
    return CivsCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory CivEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CivEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
    };
  }

  CivEntry copyWith({int? id, Value<String?> name = const Value.absent()}) =>
      CivEntry(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
      );
  @override
  String toString() {
    return (StringBuffer('CivEntry(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CivEntry && other.id == this.id && other.name == this.name);
}

class CivsCompanion extends UpdateCompanion<CivEntry> {
  final Value<int> id;
  final Value<String?> name;
  const CivsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  CivsCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  static Insertable<CivEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  CivsCompanion copyWith({Value<int>? id, Value<String?>? name}) {
    return CivsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CivsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $HeroesTable extends Heroes with TableInfo<$HeroesTable, HeroEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HeroesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _leadingMeta =
      const VerificationMeta('leading');
  @override
  late final GeneratedColumn<int> leading = GeneratedColumn<int>(
      'leading', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _slotsMeta = const VerificationMeta('slots');
  @override
  late final GeneratedColumn<int> slots = GeneratedColumn<int>(
      'slots', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dressMeta = const VerificationMeta('dress');
  @override
  late final GeneratedColumn<int> dress = GeneratedColumn<int>(
      'dress', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _civMeta = const VerificationMeta('civ');
  @override
  late final GeneratedColumn<int> civ = GeneratedColumn<int>(
      'civ', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES civs (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, name, leading, slots, dress, civ];
  @override
  String get aliasedName => _alias ?? 'heroes';
  @override
  String get actualTableName => 'heroes';
  @override
  VerificationContext validateIntegrity(Insertable<HeroEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('leading')) {
      context.handle(_leadingMeta,
          leading.isAcceptableOrUnknown(data['leading']!, _leadingMeta));
    }
    if (data.containsKey('slots')) {
      context.handle(
          _slotsMeta, slots.isAcceptableOrUnknown(data['slots']!, _slotsMeta));
    }
    if (data.containsKey('dress')) {
      context.handle(
          _dressMeta, dress.isAcceptableOrUnknown(data['dress']!, _dressMeta));
    }
    if (data.containsKey('civ')) {
      context.handle(
          _civMeta, civ.isAcceptableOrUnknown(data['civ']!, _civMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HeroEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HeroEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      leading: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}leading']),
      slots: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}slots']),
      dress: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dress']),
      civ: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}civ']),
    );
  }

  @override
  $HeroesTable createAlias(String alias) {
    return $HeroesTable(attachedDatabase, alias);
  }
}

class HeroEntry extends DataClass implements Insertable<HeroEntry> {
  final int id;
  final String? name;
  final int? leading;
  final int? slots;
  final int? dress;
  final int? civ;
  const HeroEntry(
      {required this.id,
      this.name,
      this.leading,
      this.slots,
      this.dress,
      this.civ});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || leading != null) {
      map['leading'] = Variable<int>(leading);
    }
    if (!nullToAbsent || slots != null) {
      map['slots'] = Variable<int>(slots);
    }
    if (!nullToAbsent || dress != null) {
      map['dress'] = Variable<int>(dress);
    }
    if (!nullToAbsent || civ != null) {
      map['civ'] = Variable<int>(civ);
    }
    return map;
  }

  HeroesCompanion toCompanion(bool nullToAbsent) {
    return HeroesCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      leading: leading == null && nullToAbsent
          ? const Value.absent()
          : Value(leading),
      slots:
          slots == null && nullToAbsent ? const Value.absent() : Value(slots),
      dress:
          dress == null && nullToAbsent ? const Value.absent() : Value(dress),
      civ: civ == null && nullToAbsent ? const Value.absent() : Value(civ),
    );
  }

  factory HeroEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HeroEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      leading: serializer.fromJson<int?>(json['leading']),
      slots: serializer.fromJson<int?>(json['slots']),
      dress: serializer.fromJson<int?>(json['dress']),
      civ: serializer.fromJson<int?>(json['civ']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'leading': serializer.toJson<int?>(leading),
      'slots': serializer.toJson<int?>(slots),
      'dress': serializer.toJson<int?>(dress),
      'civ': serializer.toJson<int?>(civ),
    };
  }

  HeroEntry copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<int?> leading = const Value.absent(),
          Value<int?> slots = const Value.absent(),
          Value<int?> dress = const Value.absent(),
          Value<int?> civ = const Value.absent()}) =>
      HeroEntry(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        leading: leading.present ? leading.value : this.leading,
        slots: slots.present ? slots.value : this.slots,
        dress: dress.present ? dress.value : this.dress,
        civ: civ.present ? civ.value : this.civ,
      );
  @override
  String toString() {
    return (StringBuffer('HeroEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('leading: $leading, ')
          ..write('slots: $slots, ')
          ..write('dress: $dress, ')
          ..write('civ: $civ')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, leading, slots, dress, civ);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HeroEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.leading == this.leading &&
          other.slots == this.slots &&
          other.dress == this.dress &&
          other.civ == this.civ);
}

class HeroesCompanion extends UpdateCompanion<HeroEntry> {
  final Value<int> id;
  final Value<String?> name;
  final Value<int?> leading;
  final Value<int?> slots;
  final Value<int?> dress;
  final Value<int?> civ;
  const HeroesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.leading = const Value.absent(),
    this.slots = const Value.absent(),
    this.dress = const Value.absent(),
    this.civ = const Value.absent(),
  });
  HeroesCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.leading = const Value.absent(),
    this.slots = const Value.absent(),
    this.dress = const Value.absent(),
    this.civ = const Value.absent(),
  });
  static Insertable<HeroEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? leading,
    Expression<int>? slots,
    Expression<int>? dress,
    Expression<int>? civ,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (leading != null) 'leading': leading,
      if (slots != null) 'slots': slots,
      if (dress != null) 'dress': dress,
      if (civ != null) 'civ': civ,
    });
  }

  HeroesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<int?>? leading,
      Value<int?>? slots,
      Value<int?>? dress,
      Value<int?>? civ}) {
    return HeroesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      leading: leading ?? this.leading,
      slots: slots ?? this.slots,
      dress: dress ?? this.dress,
      civ: civ ?? this.civ,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (leading.present) {
      map['leading'] = Variable<int>(leading.value);
    }
    if (slots.present) {
      map['slots'] = Variable<int>(slots.value);
    }
    if (dress.present) {
      map['dress'] = Variable<int>(dress.value);
    }
    if (civ.present) {
      map['civ'] = Variable<int>(civ.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HeroesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('leading: $leading, ')
          ..write('slots: $slots, ')
          ..write('dress: $dress, ')
          ..write('civ: $civ')
          ..write(')'))
        .toString();
  }
}

class $BuildingsTable extends Buildings
    with TableInfo<$BuildingsTable, BuildingEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BuildingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _civMeta = const VerificationMeta('civ');
  @override
  late final GeneratedColumn<int> civ = GeneratedColumn<int>(
      'civ', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES civs (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, name, civ];
  @override
  String get aliasedName => _alias ?? 'buildings';
  @override
  String get actualTableName => 'buildings';
  @override
  VerificationContext validateIntegrity(Insertable<BuildingEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('civ')) {
      context.handle(
          _civMeta, civ.isAcceptableOrUnknown(data['civ']!, _civMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BuildingEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BuildingEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      civ: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}civ']),
    );
  }

  @override
  $BuildingsTable createAlias(String alias) {
    return $BuildingsTable(attachedDatabase, alias);
  }
}

class BuildingEntry extends DataClass implements Insertable<BuildingEntry> {
  final int id;
  final String? name;
  final int? civ;
  const BuildingEntry({required this.id, this.name, this.civ});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || civ != null) {
      map['civ'] = Variable<int>(civ);
    }
    return map;
  }

  BuildingsCompanion toCompanion(bool nullToAbsent) {
    return BuildingsCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      civ: civ == null && nullToAbsent ? const Value.absent() : Value(civ),
    );
  }

  factory BuildingEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BuildingEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      civ: serializer.fromJson<int?>(json['civ']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'civ': serializer.toJson<int?>(civ),
    };
  }

  BuildingEntry copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<int?> civ = const Value.absent()}) =>
      BuildingEntry(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        civ: civ.present ? civ.value : this.civ,
      );
  @override
  String toString() {
    return (StringBuffer('BuildingEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('civ: $civ')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, civ);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BuildingEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.civ == this.civ);
}

class BuildingsCompanion extends UpdateCompanion<BuildingEntry> {
  final Value<int> id;
  final Value<String?> name;
  final Value<int?> civ;
  const BuildingsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.civ = const Value.absent(),
  });
  BuildingsCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.civ = const Value.absent(),
  });
  static Insertable<BuildingEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? civ,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (civ != null) 'civ': civ,
    });
  }

  BuildingsCompanion copyWith(
      {Value<int>? id, Value<String?>? name, Value<int?>? civ}) {
    return BuildingsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      civ: civ ?? this.civ,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (civ.present) {
      map['civ'] = Variable<int>(civ.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BuildingsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('civ: $civ')
          ..write(')'))
        .toString();
  }
}

class $UnitsTable extends Units with TableInfo<$UnitsTable, UnitEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _attackMeta = const VerificationMeta('attack');
  @override
  late final GeneratedColumn<int> attack = GeneratedColumn<int>(
      'attack', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _healthMeta = const VerificationMeta('health');
  @override
  late final GeneratedColumn<int> health = GeneratedColumn<int>(
      'health', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _speedMeta = const VerificationMeta('speed');
  @override
  late final GeneratedColumn<int> speed = GeneratedColumn<int>(
      'speed', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _civMeta = const VerificationMeta('civ');
  @override
  late final GeneratedColumn<int> civ = GeneratedColumn<int>(
      'civ', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES civs (id)'));
  static const VerificationMeta _homeMeta = const VerificationMeta('home');
  @override
  late final GeneratedColumn<int> home = GeneratedColumn<int>(
      'home', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES buildings (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, attack, health, speed, civ, home];
  @override
  String get aliasedName => _alias ?? 'units';
  @override
  String get actualTableName => 'units';
  @override
  VerificationContext validateIntegrity(Insertable<UnitEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('attack')) {
      context.handle(_attackMeta,
          attack.isAcceptableOrUnknown(data['attack']!, _attackMeta));
    }
    if (data.containsKey('health')) {
      context.handle(_healthMeta,
          health.isAcceptableOrUnknown(data['health']!, _healthMeta));
    }
    if (data.containsKey('speed')) {
      context.handle(
          _speedMeta, speed.isAcceptableOrUnknown(data['speed']!, _speedMeta));
    }
    if (data.containsKey('civ')) {
      context.handle(
          _civMeta, civ.isAcceptableOrUnknown(data['civ']!, _civMeta));
    }
    if (data.containsKey('home')) {
      context.handle(
          _homeMeta, home.isAcceptableOrUnknown(data['home']!, _homeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UnitEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UnitEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      attack: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}attack']),
      health: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}health']),
      speed: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}speed']),
      civ: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}civ']),
      home: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}home']),
    );
  }

  @override
  $UnitsTable createAlias(String alias) {
    return $UnitsTable(attachedDatabase, alias);
  }
}

class UnitEntry extends DataClass implements Insertable<UnitEntry> {
  final int id;
  final String? name;
  final int? attack;
  final int? health;
  final int? speed;
  final int? civ;
  final int? home;
  const UnitEntry(
      {required this.id,
      this.name,
      this.attack,
      this.health,
      this.speed,
      this.civ,
      this.home});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || attack != null) {
      map['attack'] = Variable<int>(attack);
    }
    if (!nullToAbsent || health != null) {
      map['health'] = Variable<int>(health);
    }
    if (!nullToAbsent || speed != null) {
      map['speed'] = Variable<int>(speed);
    }
    if (!nullToAbsent || civ != null) {
      map['civ'] = Variable<int>(civ);
    }
    if (!nullToAbsent || home != null) {
      map['home'] = Variable<int>(home);
    }
    return map;
  }

  UnitsCompanion toCompanion(bool nullToAbsent) {
    return UnitsCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      attack:
          attack == null && nullToAbsent ? const Value.absent() : Value(attack),
      health:
          health == null && nullToAbsent ? const Value.absent() : Value(health),
      speed:
          speed == null && nullToAbsent ? const Value.absent() : Value(speed),
      civ: civ == null && nullToAbsent ? const Value.absent() : Value(civ),
      home: home == null && nullToAbsent ? const Value.absent() : Value(home),
    );
  }

  factory UnitEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UnitEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      attack: serializer.fromJson<int?>(json['attack']),
      health: serializer.fromJson<int?>(json['health']),
      speed: serializer.fromJson<int?>(json['speed']),
      civ: serializer.fromJson<int?>(json['civ']),
      home: serializer.fromJson<int?>(json['home']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'attack': serializer.toJson<int?>(attack),
      'health': serializer.toJson<int?>(health),
      'speed': serializer.toJson<int?>(speed),
      'civ': serializer.toJson<int?>(civ),
      'home': serializer.toJson<int?>(home),
    };
  }

  UnitEntry copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<int?> attack = const Value.absent(),
          Value<int?> health = const Value.absent(),
          Value<int?> speed = const Value.absent(),
          Value<int?> civ = const Value.absent(),
          Value<int?> home = const Value.absent()}) =>
      UnitEntry(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        attack: attack.present ? attack.value : this.attack,
        health: health.present ? health.value : this.health,
        speed: speed.present ? speed.value : this.speed,
        civ: civ.present ? civ.value : this.civ,
        home: home.present ? home.value : this.home,
      );
  @override
  String toString() {
    return (StringBuffer('UnitEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('attack: $attack, ')
          ..write('health: $health, ')
          ..write('speed: $speed, ')
          ..write('civ: $civ, ')
          ..write('home: $home')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, attack, health, speed, civ, home);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UnitEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.attack == this.attack &&
          other.health == this.health &&
          other.speed == this.speed &&
          other.civ == this.civ &&
          other.home == this.home);
}

class UnitsCompanion extends UpdateCompanion<UnitEntry> {
  final Value<int> id;
  final Value<String?> name;
  final Value<int?> attack;
  final Value<int?> health;
  final Value<int?> speed;
  final Value<int?> civ;
  final Value<int?> home;
  const UnitsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.attack = const Value.absent(),
    this.health = const Value.absent(),
    this.speed = const Value.absent(),
    this.civ = const Value.absent(),
    this.home = const Value.absent(),
  });
  UnitsCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.attack = const Value.absent(),
    this.health = const Value.absent(),
    this.speed = const Value.absent(),
    this.civ = const Value.absent(),
    this.home = const Value.absent(),
  });
  static Insertable<UnitEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? attack,
    Expression<int>? health,
    Expression<int>? speed,
    Expression<int>? civ,
    Expression<int>? home,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (attack != null) 'attack': attack,
      if (health != null) 'health': health,
      if (speed != null) 'speed': speed,
      if (civ != null) 'civ': civ,
      if (home != null) 'home': home,
    });
  }

  UnitsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<int?>? attack,
      Value<int?>? health,
      Value<int?>? speed,
      Value<int?>? civ,
      Value<int?>? home}) {
    return UnitsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      attack: attack ?? this.attack,
      health: health ?? this.health,
      speed: speed ?? this.speed,
      civ: civ ?? this.civ,
      home: home ?? this.home,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (attack.present) {
      map['attack'] = Variable<int>(attack.value);
    }
    if (health.present) {
      map['health'] = Variable<int>(health.value);
    }
    if (speed.present) {
      map['speed'] = Variable<int>(speed.value);
    }
    if (civ.present) {
      map['civ'] = Variable<int>(civ.value);
    }
    if (home.present) {
      map['home'] = Variable<int>(home.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnitsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('attack: $attack, ')
          ..write('health: $health, ')
          ..write('speed: $speed, ')
          ..write('civ: $civ, ')
          ..write('home: $home')
          ..write(')'))
        .toString();
  }
}

class $DressesTable extends Dresses with TableInfo<$DressesTable, DressEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DressesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _healmetMeta =
      const VerificationMeta('healmet');
  @override
  late final GeneratedColumn<int> healmet = GeneratedColumn<int>(
      'healmet', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<int> body = GeneratedColumn<int>(
      'body', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _leftHandMeta =
      const VerificationMeta('leftHand');
  @override
  late final GeneratedColumn<int> leftHand = GeneratedColumn<int>(
      'left_hand', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _rightHandMeta =
      const VerificationMeta('rightHand');
  @override
  late final GeneratedColumn<int> rightHand = GeneratedColumn<int>(
      'right_hand', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _bootsMeta = const VerificationMeta('boots');
  @override
  late final GeneratedColumn<int> boots = GeneratedColumn<int>(
      'boots', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _civMeta = const VerificationMeta('civ');
  @override
  late final GeneratedColumn<int> civ = GeneratedColumn<int>(
      'civ', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES civs (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, healmet, body, leftHand, rightHand, boots, civ];
  @override
  String get aliasedName => _alias ?? 'dresses';
  @override
  String get actualTableName => 'dresses';
  @override
  VerificationContext validateIntegrity(Insertable<DressEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('healmet')) {
      context.handle(_healmetMeta,
          healmet.isAcceptableOrUnknown(data['healmet']!, _healmetMeta));
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body']!, _bodyMeta));
    }
    if (data.containsKey('left_hand')) {
      context.handle(_leftHandMeta,
          leftHand.isAcceptableOrUnknown(data['left_hand']!, _leftHandMeta));
    }
    if (data.containsKey('right_hand')) {
      context.handle(_rightHandMeta,
          rightHand.isAcceptableOrUnknown(data['right_hand']!, _rightHandMeta));
    }
    if (data.containsKey('boots')) {
      context.handle(
          _bootsMeta, boots.isAcceptableOrUnknown(data['boots']!, _bootsMeta));
    }
    if (data.containsKey('civ')) {
      context.handle(
          _civMeta, civ.isAcceptableOrUnknown(data['civ']!, _civMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DressEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DressEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      healmet: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}healmet']),
      body: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}body']),
      leftHand: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}left_hand']),
      rightHand: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}right_hand']),
      boots: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}boots']),
      civ: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}civ']),
    );
  }

  @override
  $DressesTable createAlias(String alias) {
    return $DressesTable(attachedDatabase, alias);
  }
}

class DressEntry extends DataClass implements Insertable<DressEntry> {
  final int id;
  final String? name;
  final int? healmet;
  final int? body;
  final int? leftHand;
  final int? rightHand;
  final int? boots;
  final int? civ;
  const DressEntry(
      {required this.id,
      this.name,
      this.healmet,
      this.body,
      this.leftHand,
      this.rightHand,
      this.boots,
      this.civ});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || healmet != null) {
      map['healmet'] = Variable<int>(healmet);
    }
    if (!nullToAbsent || body != null) {
      map['body'] = Variable<int>(body);
    }
    if (!nullToAbsent || leftHand != null) {
      map['left_hand'] = Variable<int>(leftHand);
    }
    if (!nullToAbsent || rightHand != null) {
      map['right_hand'] = Variable<int>(rightHand);
    }
    if (!nullToAbsent || boots != null) {
      map['boots'] = Variable<int>(boots);
    }
    if (!nullToAbsent || civ != null) {
      map['civ'] = Variable<int>(civ);
    }
    return map;
  }

  DressesCompanion toCompanion(bool nullToAbsent) {
    return DressesCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      healmet: healmet == null && nullToAbsent
          ? const Value.absent()
          : Value(healmet),
      body: body == null && nullToAbsent ? const Value.absent() : Value(body),
      leftHand: leftHand == null && nullToAbsent
          ? const Value.absent()
          : Value(leftHand),
      rightHand: rightHand == null && nullToAbsent
          ? const Value.absent()
          : Value(rightHand),
      boots:
          boots == null && nullToAbsent ? const Value.absent() : Value(boots),
      civ: civ == null && nullToAbsent ? const Value.absent() : Value(civ),
    );
  }

  factory DressEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DressEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      healmet: serializer.fromJson<int?>(json['healmet']),
      body: serializer.fromJson<int?>(json['body']),
      leftHand: serializer.fromJson<int?>(json['leftHand']),
      rightHand: serializer.fromJson<int?>(json['rightHand']),
      boots: serializer.fromJson<int?>(json['boots']),
      civ: serializer.fromJson<int?>(json['civ']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'healmet': serializer.toJson<int?>(healmet),
      'body': serializer.toJson<int?>(body),
      'leftHand': serializer.toJson<int?>(leftHand),
      'rightHand': serializer.toJson<int?>(rightHand),
      'boots': serializer.toJson<int?>(boots),
      'civ': serializer.toJson<int?>(civ),
    };
  }

  DressEntry copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<int?> healmet = const Value.absent(),
          Value<int?> body = const Value.absent(),
          Value<int?> leftHand = const Value.absent(),
          Value<int?> rightHand = const Value.absent(),
          Value<int?> boots = const Value.absent(),
          Value<int?> civ = const Value.absent()}) =>
      DressEntry(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        healmet: healmet.present ? healmet.value : this.healmet,
        body: body.present ? body.value : this.body,
        leftHand: leftHand.present ? leftHand.value : this.leftHand,
        rightHand: rightHand.present ? rightHand.value : this.rightHand,
        boots: boots.present ? boots.value : this.boots,
        civ: civ.present ? civ.value : this.civ,
      );
  @override
  String toString() {
    return (StringBuffer('DressEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('healmet: $healmet, ')
          ..write('body: $body, ')
          ..write('leftHand: $leftHand, ')
          ..write('rightHand: $rightHand, ')
          ..write('boots: $boots, ')
          ..write('civ: $civ')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, healmet, body, leftHand, rightHand, boots, civ);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DressEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.healmet == this.healmet &&
          other.body == this.body &&
          other.leftHand == this.leftHand &&
          other.rightHand == this.rightHand &&
          other.boots == this.boots &&
          other.civ == this.civ);
}

class DressesCompanion extends UpdateCompanion<DressEntry> {
  final Value<int> id;
  final Value<String?> name;
  final Value<int?> healmet;
  final Value<int?> body;
  final Value<int?> leftHand;
  final Value<int?> rightHand;
  final Value<int?> boots;
  final Value<int?> civ;
  const DressesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.healmet = const Value.absent(),
    this.body = const Value.absent(),
    this.leftHand = const Value.absent(),
    this.rightHand = const Value.absent(),
    this.boots = const Value.absent(),
    this.civ = const Value.absent(),
  });
  DressesCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.healmet = const Value.absent(),
    this.body = const Value.absent(),
    this.leftHand = const Value.absent(),
    this.rightHand = const Value.absent(),
    this.boots = const Value.absent(),
    this.civ = const Value.absent(),
  });
  static Insertable<DressEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? healmet,
    Expression<int>? body,
    Expression<int>? leftHand,
    Expression<int>? rightHand,
    Expression<int>? boots,
    Expression<int>? civ,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (healmet != null) 'healmet': healmet,
      if (body != null) 'body': body,
      if (leftHand != null) 'left_hand': leftHand,
      if (rightHand != null) 'right_hand': rightHand,
      if (boots != null) 'boots': boots,
      if (civ != null) 'civ': civ,
    });
  }

  DressesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<int?>? healmet,
      Value<int?>? body,
      Value<int?>? leftHand,
      Value<int?>? rightHand,
      Value<int?>? boots,
      Value<int?>? civ}) {
    return DressesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      healmet: healmet ?? this.healmet,
      body: body ?? this.body,
      leftHand: leftHand ?? this.leftHand,
      rightHand: rightHand ?? this.rightHand,
      boots: boots ?? this.boots,
      civ: civ ?? this.civ,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (healmet.present) {
      map['healmet'] = Variable<int>(healmet.value);
    }
    if (body.present) {
      map['body'] = Variable<int>(body.value);
    }
    if (leftHand.present) {
      map['left_hand'] = Variable<int>(leftHand.value);
    }
    if (rightHand.present) {
      map['right_hand'] = Variable<int>(rightHand.value);
    }
    if (boots.present) {
      map['boots'] = Variable<int>(boots.value);
    }
    if (civ.present) {
      map['civ'] = Variable<int>(civ.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DressesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('healmet: $healmet, ')
          ..write('body: $body, ')
          ..write('leftHand: $leftHand, ')
          ..write('rightHand: $rightHand, ')
          ..write('boots: $boots, ')
          ..write('civ: $civ')
          ..write(')'))
        .toString();
  }
}

abstract class _$DatabaseClient extends GeneratedDatabase {
  _$DatabaseClient(QueryExecutor e) : super(e);
  late final $UserTable user = $UserTable(this);
  late final $AddressTable address = $AddressTable(this);
  late final $AlbumTable album = $AlbumTable(this);
  late final $CompanyTable company = $CompanyTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  late final $HistoryLogTable historyLog = $HistoryLogTable(this);
  late final $CivsTable civs = $CivsTable(this);
  late final $HeroesTable heroes = $HeroesTable(this);
  late final $BuildingsTable buildings = $BuildingsTable(this);
  late final $UnitsTable units = $UnitsTable(this);
  late final $DressesTable dresses = $DressesTable(this);
  late final CivsDao civsDao = CivsDao(this as DatabaseClient);
  late final UserDao userDao = UserDao(this as DatabaseClient);
  late final SettingsDao settingsDao = SettingsDao(this as DatabaseClient);
  late final HistoryLogDao historyLogDao =
      HistoryLogDao(this as DatabaseClient);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        user,
        address,
        album,
        company,
        settings,
        historyLog,
        civs,
        heroes,
        buildings,
        units,
        dresses
      ];
}
