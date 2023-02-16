// Autogenerated from Pigeon (v4.2.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CosXmlClientException;
@class CosXmlServiceException;
@class Owner;
@class Bucket;
@class ListAllMyBuckets;
@class CommonPrefixes;
@class Content;
@class BucketContents;

@interface CosXmlClientException : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithErrorCode:(NSNumber *)errorCode
    message:(nullable NSString *)message
    details:(nullable NSString *)details;
@property(nonatomic, strong) NSNumber * errorCode;
@property(nonatomic, copy, nullable) NSString * message;
@property(nonatomic, copy, nullable) NSString * details;
@end

@interface CosXmlServiceException : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithStatusCode:(NSNumber *)statusCode
    httpMsg:(nullable NSString *)httpMsg
    requestId:(nullable NSString *)requestId
    errorCode:(nullable NSString *)errorCode
    errorMessage:(nullable NSString *)errorMessage
    serviceName:(nullable NSString *)serviceName
    details:(nullable NSString *)details;
@property(nonatomic, strong) NSNumber * statusCode;
@property(nonatomic, copy, nullable) NSString * httpMsg;
@property(nonatomic, copy, nullable) NSString * requestId;
@property(nonatomic, copy, nullable) NSString * errorCode;
@property(nonatomic, copy, nullable) NSString * errorMessage;
@property(nonatomic, copy, nullable) NSString * serviceName;
@property(nonatomic, copy, nullable) NSString * details;
@end

@interface Owner : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithId:(NSString *)id
    disPlayName:(nullable NSString *)disPlayName;
/// 存储桶持有者的完整 ID
@property(nonatomic, copy) NSString * id;
/// 存储桶持有者的名字
@property(nonatomic, copy, nullable) NSString * disPlayName;
@end

@interface Bucket : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithName:(NSString *)name
    location:(nullable NSString *)location
    createDate:(nullable NSString *)createDate
    type:(nullable NSString *)type;
/// 存储桶的名称
@property(nonatomic, copy) NSString * name;
/// 存储桶所在地域
@property(nonatomic, copy, nullable) NSString * location;
/// 存储桶的创建时间，为 ISO8601 格式，例如2019-05-24T10:56:40Z
@property(nonatomic, copy, nullable) NSString * createDate;
@property(nonatomic, copy, nullable) NSString * type;
@end

@interface ListAllMyBuckets : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithOwner:(Owner *)owner
    buckets:(NSArray<Bucket *> *)buckets;
/// 存储桶持有者信息
@property(nonatomic, strong) Owner * owner;
/// 存储桶列表
@property(nonatomic, strong) NSArray<Bucket *> * buckets;
@end

@interface CommonPrefixes : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithPrefix:(NSString *)prefix;
/// Common Prefix 的前缀
@property(nonatomic, copy) NSString * prefix;
@end

@interface Content : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithKey:(NSString *)key
    lastModified:(NSString *)lastModified
    eTag:(NSString *)eTag
    size:(NSNumber *)size
    owner:(Owner *)owner
    storageClass:(NSString *)storageClass;
/// 对象键
@property(nonatomic, copy) NSString * key;
/// 对象最后修改时间，为 ISO8601 格式，如2019-05-24T10:56:40Z
@property(nonatomic, copy) NSString * lastModified;
/// 对象的实体标签（Entity Tag），是对象被创建时标识对象内容的信息标签，可用于检查对象的内容是否发生变化，
/// 例如“8e0b617ca298a564c3331da28dcb50df”，此头部并不一定返回对象的 MD5 值，而是根据对象上传和加密方式而有所不同
@property(nonatomic, copy) NSString * eTag;
/// 对象大小，单位为 Byte
@property(nonatomic, strong) NSNumber * size;
/// 对象持有者信息
@property(nonatomic, strong) Owner * owner;
/// 对象存储类型
@property(nonatomic, copy) NSString * storageClass;
@end

@interface BucketContents : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithName:(NSString *)name
    encodingType:(nullable NSString *)encodingType
    prefix:(nullable NSString *)prefix
    marker:(nullable NSString *)marker
    maxKeys:(NSNumber *)maxKeys
    isTruncated:(NSNumber *)isTruncated
    nextMarker:(nullable NSString *)nextMarker
    contentsList:(NSArray<Content *> *)contentsList
    commonPrefixesList:(NSArray<CommonPrefixes *> *)commonPrefixesList
    delimiter:(nullable NSString *)delimiter;
/// 存储桶的名称，格式为<BucketName-APPID>，例如examplebucket-1250000000
@property(nonatomic, copy) NSString * name;
/// 编码格式，对应请求中的 encoding-type 参数，且仅当请求中指定了 encoding-type 参数才会返回该节点
@property(nonatomic, copy, nullable) NSString * encodingType;
/// 对象键匹配前缀，对应请求中的 prefix 参数
@property(nonatomic, copy, nullable) NSString * prefix;
/// 起始对象键标记，从该标记之后（不含）按照 UTF-8 字典序返回对象键条目，对应请求中的 marker 参数
@property(nonatomic, copy, nullable) NSString * marker;
/// 单次响应返回结果的最大条目数量，对应请求中的 max-keys 参数
/// 注意：该参数会限制每一次 List 操作返回的最大条目数，COS 在每次 List 操作中将返回不超过 max-keys 所设定数值的条目。
/// 如果由于您设置了 max-keys 参数，导致单次响应中未列出所有对象，COS 会返回一项 nextmarker 参数作为您下次 List 请求的入参，
/// 以便您后续进行列出对象
@property(nonatomic, strong) NSNumber * maxKeys;
/// 响应条目是否被截断，布尔值，例如 true 或 false
@property(nonatomic, strong) NSNumber * isTruncated;
/// 仅当响应条目有截断（IsTruncated 为 true）才会返回该节点，
/// 该节点的值为当前响应条目中的最后一个对象键，当需要继续请求后续条目时，将该节点的值作为下一次请求的 marker 参数传入
@property(nonatomic, copy, nullable) NSString * nextMarker;
/// 对象条目
@property(nonatomic, strong) NSArray<Content *> * contentsList;
/// 从 prefix 或从头（如未指定 prefix）到首个 delimiter 之间相同的部分，
/// 定义为 Common Prefix。仅当请求中指定了 delimiter 参数才有可能返回该节点
@property(nonatomic, strong) NSArray<CommonPrefixes *> * commonPrefixesList;
/// 分隔符，对应请求中的 delimiter 参数，且仅当请求中指定了 delimiter 参数才会返回该节点
@property(nonatomic, copy, nullable) NSString * delimiter;
@end

NS_ASSUME_NONNULL_END
