// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_chat_rooms.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarChatRoomsCollection on Isar {
  IsarCollection<IsarChatRooms> get isarChatRooms => this.collection();
}

const IsarChatRoomsSchema = CollectionSchema(
  name: r'IsarChatRooms',
  id: -1885637399674840295,
  properties: {
    r'created': PropertySchema(
      id: 0,
      name: r'created',
      type: IsarType.string,
    ),
    r'room_id': PropertySchema(
      id: 1,
      name: r'room_id',
      type: IsarType.string,
    ),
    r'user1': PropertySchema(
      id: 2,
      name: r'user1',
      type: IsarType.string,
    ),
    r'user2': PropertySchema(
      id: 3,
      name: r'user2',
      type: IsarType.string,
    )
  },
  estimateSize: _isarChatRoomsEstimateSize,
  serialize: _isarChatRoomsSerialize,
  deserialize: _isarChatRoomsDeserialize,
  deserializeProp: _isarChatRoomsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isarChatRoomsGetId,
  getLinks: _isarChatRoomsGetLinks,
  attach: _isarChatRoomsAttach,
  version: '3.1.0+1',
);

int _isarChatRoomsEstimateSize(
  IsarChatRooms object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.created.length * 3;
  bytesCount += 3 + object.room_id.length * 3;
  bytesCount += 3 + object.user1.length * 3;
  bytesCount += 3 + object.user2.length * 3;
  return bytesCount;
}

void _isarChatRoomsSerialize(
  IsarChatRooms object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.created);
  writer.writeString(offsets[1], object.room_id);
  writer.writeString(offsets[2], object.user1);
  writer.writeString(offsets[3], object.user2);
}

IsarChatRooms _isarChatRoomsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarChatRooms();
  object.created = reader.readString(offsets[0]);
  object.id = id;
  object.room_id = reader.readString(offsets[1]);
  object.user1 = reader.readString(offsets[2]);
  object.user2 = reader.readString(offsets[3]);
  return object;
}

P _isarChatRoomsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarChatRoomsGetId(IsarChatRooms object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarChatRoomsGetLinks(IsarChatRooms object) {
  return [];
}

void _isarChatRoomsAttach(
    IsarCollection<dynamic> col, Id id, IsarChatRooms object) {
  object.id = id;
}

extension IsarChatRoomsQueryWhereSort
    on QueryBuilder<IsarChatRooms, IsarChatRooms, QWhere> {
  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarChatRoomsQueryWhere
    on QueryBuilder<IsarChatRooms, IsarChatRooms, QWhereClause> {
  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarChatRoomsQueryFilter
    on QueryBuilder<IsarChatRooms, IsarChatRooms, QFilterCondition> {
  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'created',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'created',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      createdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'created',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'room_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'room_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'room_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'room_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'room_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'room_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'room_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'room_id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'room_id',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      room_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'room_id',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'user1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'user1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'user1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'user1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'user1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'user1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'user1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user1',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'user1',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'user2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'user2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'user2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'user2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'user2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'user2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'user2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user2',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterFilterCondition>
      user2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'user2',
        value: '',
      ));
    });
  }
}

extension IsarChatRoomsQueryObject
    on QueryBuilder<IsarChatRooms, IsarChatRooms, QFilterCondition> {}

extension IsarChatRoomsQueryLinks
    on QueryBuilder<IsarChatRooms, IsarChatRooms, QFilterCondition> {}

extension IsarChatRoomsQuerySortBy
    on QueryBuilder<IsarChatRooms, IsarChatRooms, QSortBy> {
  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> sortByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> sortByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> sortByRoom_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room_id', Sort.asc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> sortByRoom_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room_id', Sort.desc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> sortByUser1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user1', Sort.asc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> sortByUser1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user1', Sort.desc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> sortByUser2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user2', Sort.asc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> sortByUser2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user2', Sort.desc);
    });
  }
}

extension IsarChatRoomsQuerySortThenBy
    on QueryBuilder<IsarChatRooms, IsarChatRooms, QSortThenBy> {
  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenByRoom_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room_id', Sort.asc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenByRoom_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room_id', Sort.desc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenByUser1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user1', Sort.asc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenByUser1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user1', Sort.desc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenByUser2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user2', Sort.asc);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QAfterSortBy> thenByUser2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user2', Sort.desc);
    });
  }
}

extension IsarChatRoomsQueryWhereDistinct
    on QueryBuilder<IsarChatRooms, IsarChatRooms, QDistinct> {
  QueryBuilder<IsarChatRooms, IsarChatRooms, QDistinct> distinctByCreated(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QDistinct> distinctByRoom_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'room_id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QDistinct> distinctByUser1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'user1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarChatRooms, IsarChatRooms, QDistinct> distinctByUser2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'user2', caseSensitive: caseSensitive);
    });
  }
}

extension IsarChatRoomsQueryProperty
    on QueryBuilder<IsarChatRooms, IsarChatRooms, QQueryProperty> {
  QueryBuilder<IsarChatRooms, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarChatRooms, String, QQueryOperations> createdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created');
    });
  }

  QueryBuilder<IsarChatRooms, String, QQueryOperations> room_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'room_id');
    });
  }

  QueryBuilder<IsarChatRooms, String, QQueryOperations> user1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'user1');
    });
  }

  QueryBuilder<IsarChatRooms, String, QQueryOperations> user2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'user2');
    });
  }
}
