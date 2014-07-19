.class public Lcontribs/mx/S3ServiceErrorCodeTable;
.super Ljava/lang/Object;
.source "S3ServiceErrorCodeTable.java"


# static fields
.field static final TABLE:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    const/16 v0, 0x40

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "ServiceUnavailable"

    aput-object v2, v1, v4

    const-string v2, "Service Unavailable"

    aput-object v2, v1, v5

    const-string v2, "N/A"

    aput-object v2, v1, v6

    const-string v2, "Server"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "AccessDenied"

    aput-object v2, v1, v4

    const-string v2, "Access Denied"

    aput-object v2, v1, v5

    const-string v2, "403 Forbidden"

    aput-object v2, v1, v6

    const-string v2, "Client"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "AccountProblem"

    aput-object v2, v1, v4

    const-string v2, "There is a problem with your AWS account that prevents the operation from completing successfully. Please contact customer service at webservices@amazon.com."

    aput-object v2, v1, v5

    const-string v2, "403 Forbidden"

    aput-object v2, v1, v6

    const-string v2, "Client"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "AmbiguousGrantByEmailAddress"

    aput-object v2, v1, v4

    const-string v2, "The e-mail address you provided is associated with more than one account."

    aput-object v2, v1, v5

    const-string v2, "400 Bad Request"

    aput-object v2, v1, v6

    const-string v2, "Client"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "BadDigest"

    aput-object v2, v1, v4

    const-string v2, "The Content-MD5 you specified did not match what we received."

    aput-object v2, v1, v5

    const-string v2, "400 Bad Request"

    aput-object v2, v1, v6

    const-string v2, "Client"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BucketAlreadyExists"

    aput-object v3, v2, v4

    const-string v3, "The requested bucket name is not available. The bucket namespace is shared by all users of the system. Please select a different name and try again."

    aput-object v3, v2, v5

    const-string v3, "409 Conflict"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BucketAlreadyOwnedByYou"

    aput-object v3, v2, v4

    const-string v3, "Your previous request to create the named bucket succeeded and you already own it."

    aput-object v3, v2, v5

    const-string v3, "409 Conflict"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BucketNotEmpty"

    aput-object v3, v2, v4

    const-string v3, "The bucket you tried to delete is not empty."

    aput-object v3, v2, v5

    const-string v3, "409 Conflict"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CredentialsNotSupported"

    aput-object v3, v2, v4

    const-string v3, "This request does not support credentials."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CrossLocationLoggingProhibited"

    aput-object v3, v2, v4

    const-string v3, "Cross location logging not allowed. Buckets in one geographic location cannot log information to a bucket in another location."

    aput-object v3, v2, v5

    const-string v3, "403 Forbidden"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EntityTooSmall"

    aput-object v3, v2, v4

    const-string v3, "Your proposed upload is smaller than the minimum allowed object size."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EntityTooLarge"

    aput-object v3, v2, v4

    const-string v3, "Your proposed upload exceeds the maximum allowed object size."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ExpiredToken"

    aput-object v3, v2, v4

    const-string v3, "The provided token has expired."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "IncompleteBody"

    aput-object v3, v2, v4

    const-string v3, "You did not provide the number of bytes specified by the Content-Length HTTP header"

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "IncorrectNumberOfFilesInPostRequest"

    aput-object v3, v2, v4

    const-string v3, "POST requires exactly one file upload per request."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InlineDataTooLarge"

    aput-object v3, v2, v4

    const-string v3, "Inline data exceeds the maximum allowed size."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InternalError"

    aput-object v3, v2, v4

    const-string v3, "We encountered an internal error. Please try again."

    aput-object v3, v2, v5

    const-string v3, "500 Internal Server Error"

    aput-object v3, v2, v6

    const-string v3, "Server"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidAccessKeyId"

    aput-object v3, v2, v4

    const-string v3, "The AWS Access Key Id you provided does not exist in our records."

    aput-object v3, v2, v5

    const-string v3, "403 Forbidden"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidAddressingHeader"

    aput-object v3, v2, v4

    const-string v3, "You must specify the Anonymous role."

    aput-object v3, v2, v5

    const-string v3, "N/A"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidArgument"

    aput-object v3, v2, v4

    const-string v3, "Invalid Argument"

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidBucketName"

    aput-object v3, v2, v4

    const-string v3, "The specified bucket is not valid."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidDigest"

    aput-object v3, v2, v4

    const-string v3, "The Content-MD5 you specified was an invalid."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidLocationConstraint"

    aput-object v3, v2, v4

    const-string v3, "The specified location constraint is not valid."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidPayer"

    aput-object v3, v2, v4

    const-string v3, "All access to this object has been disabled."

    aput-object v3, v2, v5

    const-string v3, "403 Forbidden"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidPolicyDocument"

    aput-object v3, v2, v4

    const-string v3, "The content of the form does not meet the conditions specified in the policy document."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidRange"

    aput-object v3, v2, v4

    const-string v3, "The requested range cannot be satisfied."

    aput-object v3, v2, v5

    const-string v3, "416 Requested Range Not Satisfiable"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidSecurity"

    aput-object v3, v2, v4

    const-string v3, "The provided security credentials are not valid."

    aput-object v3, v2, v5

    const-string v3, "403 Forbidden"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidSOAPRequest"

    aput-object v3, v2, v4

    const-string v3, "The SOAP request body is invalid."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidStorageClass"

    aput-object v3, v2, v4

    const-string v3, "The storage class you specified is not valid."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidTargetBucketForLogging"

    aput-object v3, v2, v4

    const-string v3, "The target bucket for logging does not exist, is not owned by you, or does not have the appropriate grants for the log-delivery group. "

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidToken"

    aput-object v3, v2, v4

    const-string v3, "The provided token is malformed or otherwise invalid."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InvalidURI"

    aput-object v3, v2, v4

    const-string v3, "Couldn\'t parse the specified URI."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KeyTooLong"

    aput-object v3, v2, v4

    const-string v3, "Your key is too long."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MalformedACLError"

    aput-object v3, v2, v4

    const-string v3, "The XML you provided was not well-formed or did not validate against our published schema."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MalformedXML"

    aput-object v3, v2, v4

    const-string v3, "The XML you provided was not well-formed or did not validate against our published schema."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MaxMessageLengthExceeded"

    aput-object v3, v2, v4

    const-string v3, "Your request was too big."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MaxPostPreDataLengthExceededError"

    aput-object v3, v2, v4

    const-string v3, "Your POST request fields preceding the upload file were too large."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MetadataTooLarge"

    aput-object v3, v2, v4

    const-string v3, "Your metadata headers exceed the maximum allowed metadata size."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MethodNotAllowed"

    aput-object v3, v2, v4

    const-string v3, "The specified method is not allowed against this resource."

    aput-object v3, v2, v5

    const-string v3, "405 Method Not Allowed"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MissingAttachment"

    aput-object v3, v2, v4

    const-string v3, "A SOAP attachment was expected, but none were found."

    aput-object v3, v2, v5

    const-string v3, "N/A"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MissingContentLength"

    aput-object v3, v2, v4

    const-string v3, "You must provide the Content-Length HTTP header."

    aput-object v3, v2, v5

    const-string v3, "411 Length Required"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MissingSecurityElement"

    aput-object v3, v2, v4

    const-string v3, "The SOAP 1.1 request is missing a security element."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MissingSecurityHeader"

    aput-object v3, v2, v4

    const-string v3, "Your request was missing a required header."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NoLoggingStatusForKey"

    aput-object v3, v2, v4

    const-string v3, "There is no such thing as a logging status sub-resource for a key."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NoSuchBucket"

    aput-object v3, v2, v4

    const-string v3, "The specified bucket does not exist."

    aput-object v3, v2, v5

    const-string v3, "404 Not Found"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NoSuchKey"

    aput-object v3, v2, v4

    const-string v3, "The specified key does not exist."

    aput-object v3, v2, v5

    const-string v3, "404 Not Found"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NotImplemented"

    aput-object v3, v2, v4

    const-string v3, "A header you provided implies functionality that is not implemented."

    aput-object v3, v2, v5

    const-string v3, "501 Not Implemented"

    aput-object v3, v2, v6

    const-string v3, "Server"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NotSignedUp"

    aput-object v3, v2, v4

    const-string v3, "Your account is not signed up for the Amazon S3 service. You must sign up before you can use Amazon S3. You can sign up at the following URL: http://aws.amazon.com/s3"

    aput-object v3, v2, v5

    const-string v3, "403 Forbidden"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OperationAborted"

    aput-object v3, v2, v4

    const-string v3, "A conflicting conditional operation is currently in progress against this resource. Please try again."

    aput-object v3, v2, v5

    const-string v3, "409 Conflict"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PermanentRedirect"

    aput-object v3, v2, v4

    const-string v3, "The bucket you are attempting to access must be addressed using the specified endpoint. Please send all future requests to this endpoint."

    aput-object v3, v2, v5

    const-string v3, "301 Moved Permanently"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PreconditionFailed"

    aput-object v3, v2, v4

    const-string v3, "At least one of the pre-conditions you specified did not hold."

    aput-object v3, v2, v5

    const-string v3, "412 Precondition Failed"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Redirect"

    aput-object v3, v2, v4

    const-string v3, "Temporary redirect."

    aput-object v3, v2, v5

    const-string v3, "307 Moved Temporarily"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RequestIsNotMultiPartContent"

    aput-object v3, v2, v4

    const-string v3, "Bucket POST must be of the enclosure-type multipart/form-data."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RequestTimeout"

    aput-object v3, v2, v4

    const-string v3, "Your socket connection to the server was not read from or written to within the timeout period."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RequestTimeTooSkewed"

    aput-object v3, v2, v4

    const-string v3, "The difference between the request time and the server\'s time is too large."

    aput-object v3, v2, v5

    const-string v3, "403 Forbidden"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RequestTorrentOfBucketError"

    aput-object v3, v2, v4

    const-string v3, "Requesting the torrent file of a bucket is not permitted."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SignatureDoesNotMatch"

    aput-object v3, v2, v4

    const-string v3, "The request signature we calculated does not match the signature you provided. Check your AWS Secret Access Key and signing method. For more information, see Authenticating REST Requests and Authenticating SOAP Requests for details."

    aput-object v3, v2, v5

    const-string v3, "403 Forbidden"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SlowDown"

    aput-object v3, v2, v4

    const-string v3, "Please reduce your request rate."

    aput-object v3, v2, v5

    const-string v3, "503 Service Unavailable"

    aput-object v3, v2, v6

    const-string v3, "Server"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TemporaryRedirect"

    aput-object v3, v2, v4

    const-string v3, "You are being redirected to the bucket while DNS updates."

    aput-object v3, v2, v5

    const-string v3, "307 Moved Temporarily"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TokenRefreshRequired"

    aput-object v3, v2, v4

    const-string v3, "The provided token must be refreshed."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TooManyBuckets"

    aput-object v3, v2, v4

    const-string v3, "You have attempted to create more buckets than allowed."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UnexpectedContent"

    aput-object v3, v2, v4

    const-string v3, "This request does not support content."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UnresolvableGrantByEmailAddress"

    aput-object v3, v2, v4

    const-string v3, "The e-mail address you provided does not match any account on record."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UserKeyMustBeSpecified"

    aput-object v3, v2, v4

    const-string v3, "The bucket POST must contain the specified field name. If it is specified, please check the order of the fields."

    aput-object v3, v2, v5

    const-string v3, "400 Bad Request"

    aput-object v3, v2, v6

    const-string v3, "Client"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcontribs/mx/S3ServiceErrorCodeTable;->TABLE:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
