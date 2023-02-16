// Autogenerated from Pigeon (v4.2.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "pigeon.h"

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static id GetNullableObject(NSDictionary* dict, id key) {
  id result = dict[key];
  return (result == [NSNull null]) ? nil : result;
}
static id GetNullableObjectAtIndex(NSArray* array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface CosXmlClientException ()
+ (CosXmlClientException *)fromMap:(NSDictionary *)dict;
+ (nullable CosXmlClientException *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface CosXmlServiceException ()
+ (CosXmlServiceException *)fromMap:(NSDictionary *)dict;
+ (nullable CosXmlServiceException *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface Owner ()
+ (Owner *)fromMap:(NSDictionary *)dict;
+ (nullable Owner *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface Bucket ()
+ (Bucket *)fromMap:(NSDictionary *)dict;
+ (nullable Bucket *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface ListAllMyBuckets ()
+ (ListAllMyBuckets *)fromMap:(NSDictionary *)dict;
+ (nullable ListAllMyBuckets *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface CommonPrefixes ()
+ (CommonPrefixes *)fromMap:(NSDictionary *)dict;
+ (nullable CommonPrefixes *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface Content ()
+ (Content *)fromMap:(NSDictionary *)dict;
+ (nullable Content *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface BucketContents ()
+ (BucketContents *)fromMap:(NSDictionary *)dict;
+ (nullable BucketContents *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end

@implementation CosXmlClientException
+ (instancetype)makeWithErrorCode:(NSNumber *)errorCode
    message:(nullable NSString *)message
    details:(nullable NSString *)details {
  CosXmlClientException* pigeonResult = [[CosXmlClientException alloc] init];
  pigeonResult.errorCode = errorCode;
  pigeonResult.message = message;
  pigeonResult.details = details;
  return pigeonResult;
}
+ (CosXmlClientException *)fromMap:(NSDictionary *)dict {
  CosXmlClientException *pigeonResult = [[CosXmlClientException alloc] init];
  pigeonResult.errorCode = GetNullableObject(dict, @"errorCode");
  NSAssert(pigeonResult.errorCode != nil, @"");
  pigeonResult.message = GetNullableObject(dict, @"message");
  pigeonResult.details = GetNullableObject(dict, @"details");
  return pigeonResult;
}
+ (nullable CosXmlClientException *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [CosXmlClientException fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"errorCode" : (self.errorCode ?: [NSNull null]),
    @"message" : (self.message ?: [NSNull null]),
    @"details" : (self.details ?: [NSNull null]),
  };
}
@end

@implementation CosXmlServiceException
+ (instancetype)makeWithStatusCode:(NSNumber *)statusCode
    httpMsg:(nullable NSString *)httpMsg
    requestId:(nullable NSString *)requestId
    errorCode:(nullable NSString *)errorCode
    errorMessage:(nullable NSString *)errorMessage
    serviceName:(nullable NSString *)serviceName
    details:(nullable NSString *)details {
  CosXmlServiceException* pigeonResult = [[CosXmlServiceException alloc] init];
  pigeonResult.statusCode = statusCode;
  pigeonResult.httpMsg = httpMsg;
  pigeonResult.requestId = requestId;
  pigeonResult.errorCode = errorCode;
  pigeonResult.errorMessage = errorMessage;
  pigeonResult.serviceName = serviceName;
  pigeonResult.details = details;
  return pigeonResult;
}
+ (CosXmlServiceException *)fromMap:(NSDictionary *)dict {
  CosXmlServiceException *pigeonResult = [[CosXmlServiceException alloc] init];
  pigeonResult.statusCode = GetNullableObject(dict, @"statusCode");
  NSAssert(pigeonResult.statusCode != nil, @"");
  pigeonResult.httpMsg = GetNullableObject(dict, @"httpMsg");
  pigeonResult.requestId = GetNullableObject(dict, @"requestId");
  pigeonResult.errorCode = GetNullableObject(dict, @"errorCode");
  pigeonResult.errorMessage = GetNullableObject(dict, @"errorMessage");
  pigeonResult.serviceName = GetNullableObject(dict, @"serviceName");
  pigeonResult.details = GetNullableObject(dict, @"details");
  return pigeonResult;
}
+ (nullable CosXmlServiceException *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [CosXmlServiceException fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"statusCode" : (self.statusCode ?: [NSNull null]),
    @"httpMsg" : (self.httpMsg ?: [NSNull null]),
    @"requestId" : (self.requestId ?: [NSNull null]),
    @"errorCode" : (self.errorCode ?: [NSNull null]),
    @"errorMessage" : (self.errorMessage ?: [NSNull null]),
    @"serviceName" : (self.serviceName ?: [NSNull null]),
    @"details" : (self.details ?: [NSNull null]),
  };
}
@end

@implementation Owner
+ (instancetype)makeWithId:(NSString *)id
    disPlayName:(nullable NSString *)disPlayName {
  Owner* pigeonResult = [[Owner alloc] init];
  pigeonResult.id = id;
  pigeonResult.disPlayName = disPlayName;
  return pigeonResult;
}
+ (Owner *)fromMap:(NSDictionary *)dict {
  Owner *pigeonResult = [[Owner alloc] init];
  pigeonResult.id = GetNullableObject(dict, @"id");
  NSAssert(pigeonResult.id != nil, @"");
  pigeonResult.disPlayName = GetNullableObject(dict, @"disPlayName");
  return pigeonResult;
}
+ (nullable Owner *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [Owner fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"id" : (self.id ?: [NSNull null]),
    @"disPlayName" : (self.disPlayName ?: [NSNull null]),
  };
}
@end

@implementation Bucket
+ (instancetype)makeWithName:(NSString *)name
    location:(nullable NSString *)location
    createDate:(nullable NSString *)createDate
    type:(nullable NSString *)type {
  Bucket* pigeonResult = [[Bucket alloc] init];
  pigeonResult.name = name;
  pigeonResult.location = location;
  pigeonResult.createDate = createDate;
  pigeonResult.type = type;
  return pigeonResult;
}
+ (Bucket *)fromMap:(NSDictionary *)dict {
  Bucket *pigeonResult = [[Bucket alloc] init];
  pigeonResult.name = GetNullableObject(dict, @"name");
  NSAssert(pigeonResult.name != nil, @"");
  pigeonResult.location = GetNullableObject(dict, @"location");
  pigeonResult.createDate = GetNullableObject(dict, @"createDate");
  pigeonResult.type = GetNullableObject(dict, @"type");
  return pigeonResult;
}
+ (nullable Bucket *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [Bucket fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"name" : (self.name ?: [NSNull null]),
    @"location" : (self.location ?: [NSNull null]),
    @"createDate" : (self.createDate ?: [NSNull null]),
    @"type" : (self.type ?: [NSNull null]),
  };
}
@end

@implementation ListAllMyBuckets
+ (instancetype)makeWithOwner:(Owner *)owner
    buckets:(NSArray<Bucket *> *)buckets {
  ListAllMyBuckets* pigeonResult = [[ListAllMyBuckets alloc] init];
  pigeonResult.owner = owner;
  pigeonResult.buckets = buckets;
  return pigeonResult;
}
+ (ListAllMyBuckets *)fromMap:(NSDictionary *)dict {
  ListAllMyBuckets *pigeonResult = [[ListAllMyBuckets alloc] init];
  pigeonResult.owner = [Owner nullableFromMap:GetNullableObject(dict, @"owner")];
  NSAssert(pigeonResult.owner != nil, @"");
  pigeonResult.buckets = GetNullableObject(dict, @"buckets");
  NSAssert(pigeonResult.buckets != nil, @"");
  return pigeonResult;
}
+ (nullable ListAllMyBuckets *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [ListAllMyBuckets fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"owner" : (self.owner ? [self.owner toMap] : [NSNull null]),
    @"buckets" : (self.buckets ?: [NSNull null]),
  };
}
@end

@implementation CommonPrefixes
+ (instancetype)makeWithPrefix:(NSString *)prefix {
  CommonPrefixes* pigeonResult = [[CommonPrefixes alloc] init];
  pigeonResult.prefix = prefix;
  return pigeonResult;
}
+ (CommonPrefixes *)fromMap:(NSDictionary *)dict {
  CommonPrefixes *pigeonResult = [[CommonPrefixes alloc] init];
  pigeonResult.prefix = GetNullableObject(dict, @"prefix");
  NSAssert(pigeonResult.prefix != nil, @"");
  return pigeonResult;
}
+ (nullable CommonPrefixes *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [CommonPrefixes fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"prefix" : (self.prefix ?: [NSNull null]),
  };
}
@end

@implementation Content
+ (instancetype)makeWithKey:(NSString *)key
    lastModified:(NSString *)lastModified
    eTag:(NSString *)eTag
    size:(NSNumber *)size
    owner:(Owner *)owner
    storageClass:(NSString *)storageClass {
  Content* pigeonResult = [[Content alloc] init];
  pigeonResult.key = key;
  pigeonResult.lastModified = lastModified;
  pigeonResult.eTag = eTag;
  pigeonResult.size = size;
  pigeonResult.owner = owner;
  pigeonResult.storageClass = storageClass;
  return pigeonResult;
}
+ (Content *)fromMap:(NSDictionary *)dict {
  Content *pigeonResult = [[Content alloc] init];
  pigeonResult.key = GetNullableObject(dict, @"key");
  NSAssert(pigeonResult.key != nil, @"");
  pigeonResult.lastModified = GetNullableObject(dict, @"lastModified");
  NSAssert(pigeonResult.lastModified != nil, @"");
  pigeonResult.eTag = GetNullableObject(dict, @"eTag");
  NSAssert(pigeonResult.eTag != nil, @"");
  pigeonResult.size = GetNullableObject(dict, @"size");
  NSAssert(pigeonResult.size != nil, @"");
  pigeonResult.owner = [Owner nullableFromMap:GetNullableObject(dict, @"owner")];
  NSAssert(pigeonResult.owner != nil, @"");
  pigeonResult.storageClass = GetNullableObject(dict, @"storageClass");
  NSAssert(pigeonResult.storageClass != nil, @"");
  return pigeonResult;
}
+ (nullable Content *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [Content fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"key" : (self.key ?: [NSNull null]),
    @"lastModified" : (self.lastModified ?: [NSNull null]),
    @"eTag" : (self.eTag ?: [NSNull null]),
    @"size" : (self.size ?: [NSNull null]),
    @"owner" : (self.owner ? [self.owner toMap] : [NSNull null]),
    @"storageClass" : (self.storageClass ?: [NSNull null]),
  };
}
@end

@implementation BucketContents
+ (instancetype)makeWithName:(NSString *)name
    encodingType:(nullable NSString *)encodingType
    prefix:(nullable NSString *)prefix
    marker:(nullable NSString *)marker
    maxKeys:(NSNumber *)maxKeys
    isTruncated:(NSNumber *)isTruncated
    nextMarker:(nullable NSString *)nextMarker
    contentsList:(NSArray<Content *> *)contentsList
    commonPrefixesList:(NSArray<CommonPrefixes *> *)commonPrefixesList
    delimiter:(nullable NSString *)delimiter {
  BucketContents* pigeonResult = [[BucketContents alloc] init];
  pigeonResult.name = name;
  pigeonResult.encodingType = encodingType;
  pigeonResult.prefix = prefix;
  pigeonResult.marker = marker;
  pigeonResult.maxKeys = maxKeys;
  pigeonResult.isTruncated = isTruncated;
  pigeonResult.nextMarker = nextMarker;
  pigeonResult.contentsList = contentsList;
  pigeonResult.commonPrefixesList = commonPrefixesList;
  pigeonResult.delimiter = delimiter;
  return pigeonResult;
}
+ (BucketContents *)fromMap:(NSDictionary *)dict {
  BucketContents *pigeonResult = [[BucketContents alloc] init];
  pigeonResult.name = GetNullableObject(dict, @"name");
  NSAssert(pigeonResult.name != nil, @"");
  pigeonResult.encodingType = GetNullableObject(dict, @"encodingType");
  pigeonResult.prefix = GetNullableObject(dict, @"prefix");
  pigeonResult.marker = GetNullableObject(dict, @"marker");
  pigeonResult.maxKeys = GetNullableObject(dict, @"maxKeys");
  NSAssert(pigeonResult.maxKeys != nil, @"");
  pigeonResult.isTruncated = GetNullableObject(dict, @"isTruncated");
  NSAssert(pigeonResult.isTruncated != nil, @"");
  pigeonResult.nextMarker = GetNullableObject(dict, @"nextMarker");
  pigeonResult.contentsList = GetNullableObject(dict, @"contentsList");
  NSAssert(pigeonResult.contentsList != nil, @"");
  pigeonResult.commonPrefixesList = GetNullableObject(dict, @"commonPrefixesList");
  NSAssert(pigeonResult.commonPrefixesList != nil, @"");
  pigeonResult.delimiter = GetNullableObject(dict, @"delimiter");
  return pigeonResult;
}
+ (nullable BucketContents *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [BucketContents fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"name" : (self.name ?: [NSNull null]),
    @"encodingType" : (self.encodingType ?: [NSNull null]),
    @"prefix" : (self.prefix ?: [NSNull null]),
    @"marker" : (self.marker ?: [NSNull null]),
    @"maxKeys" : (self.maxKeys ?: [NSNull null]),
    @"isTruncated" : (self.isTruncated ?: [NSNull null]),
    @"nextMarker" : (self.nextMarker ?: [NSNull null]),
    @"contentsList" : (self.contentsList ?: [NSNull null]),
    @"commonPrefixesList" : (self.commonPrefixesList ?: [NSNull null]),
    @"delimiter" : (self.delimiter ?: [NSNull null]),
  };
}
@end
