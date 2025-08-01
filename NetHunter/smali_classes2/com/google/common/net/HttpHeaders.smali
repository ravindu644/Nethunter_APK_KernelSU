.class public final Lcom/google/common/net/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation runtime Lcom/google/common/net/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;
    }
.end annotation


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "Accept"

.field public static final ACCEPT_CH:Ljava/lang/String; = "Accept-CH"

.field public static final ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field public static final ACCEPT_RANGES:Ljava/lang/String; = "Accept-Ranges"

.field public static final ACCESS_CONTROL_ALLOW_CREDENTIALS:Ljava/lang/String; = "Access-Control-Allow-Credentials"

.field public static final ACCESS_CONTROL_ALLOW_HEADERS:Ljava/lang/String; = "Access-Control-Allow-Headers"

.field public static final ACCESS_CONTROL_ALLOW_METHODS:Ljava/lang/String; = "Access-Control-Allow-Methods"

.field public static final ACCESS_CONTROL_ALLOW_ORIGIN:Ljava/lang/String; = "Access-Control-Allow-Origin"

.field public static final ACCESS_CONTROL_ALLOW_PRIVATE_NETWORK:Ljava/lang/String; = "Access-Control-Allow-Private-Network"

.field public static final ACCESS_CONTROL_EXPOSE_HEADERS:Ljava/lang/String; = "Access-Control-Expose-Headers"

.field public static final ACCESS_CONTROL_MAX_AGE:Ljava/lang/String; = "Access-Control-Max-Age"

.field public static final ACCESS_CONTROL_REQUEST_HEADERS:Ljava/lang/String; = "Access-Control-Request-Headers"

.field public static final ACCESS_CONTROL_REQUEST_METHOD:Ljava/lang/String; = "Access-Control-Request-Method"

.field public static final AD_AUCTION_SIGNALS:Ljava/lang/String; = "Ad-Auction-Signals"

.field public static final AGE:Ljava/lang/String; = "Age"

.field public static final ALLOW:Ljava/lang/String; = "Allow"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CDN_LOOP:Ljava/lang/String; = "CDN-Loop"

.field public static final CONNECTION:Ljava/lang/String; = "Connection"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "Content-Location"

.field public static final CONTENT_MD5:Ljava/lang/String; = "Content-MD5"

.field public static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final CONTENT_SECURITY_POLICY:Ljava/lang/String; = "Content-Security-Policy"

.field public static final CONTENT_SECURITY_POLICY_REPORT_ONLY:Ljava/lang/String; = "Content-Security-Policy-Report-Only"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final COOKIE:Ljava/lang/String; = "Cookie"

.field public static final CRITICAL_CH:Ljava/lang/String; = "Critical-CH"

.field public static final CROSS_ORIGIN_EMBEDDER_POLICY:Ljava/lang/String; = "Cross-Origin-Embedder-Policy"

.field public static final CROSS_ORIGIN_EMBEDDER_POLICY_REPORT_ONLY:Ljava/lang/String; = "Cross-Origin-Embedder-Policy-Report-Only"

.field public static final CROSS_ORIGIN_OPENER_POLICY:Ljava/lang/String; = "Cross-Origin-Opener-Policy"

.field public static final CROSS_ORIGIN_RESOURCE_POLICY:Ljava/lang/String; = "Cross-Origin-Resource-Policy"

.field public static final DATE:Ljava/lang/String; = "Date"

.field public static final DEVICE_MEMORY:Ljava/lang/String; = "Device-Memory"

.field public static final DNT:Ljava/lang/String; = "DNT"

.field public static final DOWNLINK:Ljava/lang/String; = "Downlink"

.field public static final EARLY_DATA:Ljava/lang/String; = "Early-Data"

.field public static final ECT:Ljava/lang/String; = "ECT"

.field public static final ETAG:Ljava/lang/String; = "ETag"

.field public static final EXPECT:Ljava/lang/String; = "Expect"

.field public static final EXPIRES:Ljava/lang/String; = "Expires"

.field public static final FOLLOW_ONLY_WHEN_PRERENDER_SHOWN:Ljava/lang/String; = "Follow-Only-When-Prerender-Shown"

.field public static final FORWARDED:Ljava/lang/String; = "Forwarded"

.field public static final FROM:Ljava/lang/String; = "From"

.field public static final HOST:Ljava/lang/String; = "Host"

.field public static final HTTP2_SETTINGS:Ljava/lang/String; = "HTTP2-Settings"

.field public static final IF_MATCH:Ljava/lang/String; = "If-Match"

.field public static final IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final IF_RANGE:Ljava/lang/String; = "If-Range"

.field public static final IF_UNMODIFIED_SINCE:Ljava/lang/String; = "If-Unmodified-Since"

.field public static final KEEP_ALIVE:Ljava/lang/String; = "Keep-Alive"

.field public static final LAST_EVENT_ID:Ljava/lang/String; = "Last-Event-ID"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final LINK:Ljava/lang/String; = "Link"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field public static final MAX_FORWARDS:Ljava/lang/String; = "Max-Forwards"

.field public static final NO_VARY_SEARCH:Ljava/lang/String; = "No-Vary-Search"

.field public static final OBSERVE_BROWSING_TOPICS:Ljava/lang/String; = "Observe-Browsing-Topics"

.field public static final ORIGIN:Ljava/lang/String; = "Origin"

.field public static final ORIGIN_ISOLATION:Ljava/lang/String; = "Origin-Isolation"

.field public static final ORIGIN_TRIAL:Ljava/lang/String; = "Origin-Trial"

.field public static final P3P:Ljava/lang/String; = "P3P"

.field public static final PERMISSIONS_POLICY:Ljava/lang/String; = "Permissions-Policy"

.field public static final PING_FROM:Ljava/lang/String; = "Ping-From"

.field public static final PING_TO:Ljava/lang/String; = "Ping-To"

.field public static final PRAGMA:Ljava/lang/String; = "Pragma"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final PUBLIC_KEY_PINS:Ljava/lang/String; = "Public-Key-Pins"

.field public static final PUBLIC_KEY_PINS_REPORT_ONLY:Ljava/lang/String; = "Public-Key-Pins-Report-Only"

.field public static final PURPOSE:Ljava/lang/String; = "Purpose"

.field public static final RANGE:Ljava/lang/String; = "Range"

.field public static final REFERER:Ljava/lang/String; = "Referer"

.field public static final REFERRER_POLICY:Ljava/lang/String; = "Referrer-Policy"

.field public static final REFRESH:Ljava/lang/String; = "Refresh"

.field public static final REPORT_TO:Ljava/lang/String; = "Report-To"

.field public static final RETRY_AFTER:Ljava/lang/String; = "Retry-After"

.field public static final RTT:Ljava/lang/String; = "RTT"

.field public static final SAVE_DATA:Ljava/lang/String; = "Save-Data"

.field public static final SEC_AD_AUCTION_FETCH:Ljava/lang/String; = "Sec-Ad-Auction-Fetch"

.field public static final SEC_BROWSING_TOPICS:Ljava/lang/String; = "Sec-Browsing-Topics"

.field public static final SEC_CH_DPR:Ljava/lang/String; = "Sec-CH-DPR"

.field public static final SEC_CH_PREFERS_COLOR_SCHEME:Ljava/lang/String; = "Sec-CH-Prefers-Color-Scheme"

.field public static final SEC_CH_UA:Ljava/lang/String; = "Sec-CH-UA"

.field public static final SEC_CH_UA_ARCH:Ljava/lang/String; = "Sec-CH-UA-Arch"

.field public static final SEC_CH_UA_BITNESS:Ljava/lang/String; = "Sec-CH-UA-Bitness"

.field public static final SEC_CH_UA_FORM_FACTOR:Ljava/lang/String; = "Sec-CH-UA-Form-Factor"

.field public static final SEC_CH_UA_FULL_VERSION:Ljava/lang/String; = "Sec-CH-UA-Full-Version"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEC_CH_UA_FULL_VERSION_LIST:Ljava/lang/String; = "Sec-CH-UA-Full-Version-List"

.field public static final SEC_CH_UA_MOBILE:Ljava/lang/String; = "Sec-CH-UA-Mobile"

.field public static final SEC_CH_UA_MODEL:Ljava/lang/String; = "Sec-CH-UA-Model"

.field public static final SEC_CH_UA_PLATFORM:Ljava/lang/String; = "Sec-CH-UA-Platform"

.field public static final SEC_CH_UA_PLATFORM_VERSION:Ljava/lang/String; = "Sec-CH-UA-Platform-Version"

.field public static final SEC_CH_UA_WOW64:Ljava/lang/String; = "Sec-CH-UA-WoW64"

.field public static final SEC_CH_VIEWPORT_HEIGHT:Ljava/lang/String; = "Sec-CH-Viewport-Height"

.field public static final SEC_CH_VIEWPORT_WIDTH:Ljava/lang/String; = "Sec-CH-Viewport-Width"

.field public static final SEC_FETCH_DEST:Ljava/lang/String; = "Sec-Fetch-Dest"

.field public static final SEC_FETCH_MODE:Ljava/lang/String; = "Sec-Fetch-Mode"

.field public static final SEC_FETCH_SITE:Ljava/lang/String; = "Sec-Fetch-Site"

.field public static final SEC_FETCH_USER:Ljava/lang/String; = "Sec-Fetch-User"

.field public static final SEC_METADATA:Ljava/lang/String; = "Sec-Metadata"

.field public static final SEC_PROVIDED_TOKEN_BINDING_ID:Ljava/lang/String; = "Sec-Provided-Token-Binding-ID"

.field public static final SEC_REFERRED_TOKEN_BINDING_ID:Ljava/lang/String; = "Sec-Referred-Token-Binding-ID"

.field public static final SEC_TOKEN_BINDING:Ljava/lang/String; = "Sec-Token-Binding"

.field public static final SEC_WEBSOCKET_ACCEPT:Ljava/lang/String; = "Sec-WebSocket-Accept"

.field public static final SEC_WEBSOCKET_EXTENSIONS:Ljava/lang/String; = "Sec-WebSocket-Extensions"

.field public static final SEC_WEBSOCKET_KEY:Ljava/lang/String; = "Sec-WebSocket-Key"

.field public static final SEC_WEBSOCKET_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"

.field public static final SEC_WEBSOCKET_VERSION:Ljava/lang/String; = "Sec-WebSocket-Version"

.field public static final SERVER:Ljava/lang/String; = "Server"

.field public static final SERVER_TIMING:Ljava/lang/String; = "Server-Timing"

.field public static final SERVICE_WORKER:Ljava/lang/String; = "Service-Worker"

.field public static final SERVICE_WORKER_ALLOWED:Ljava/lang/String; = "Service-Worker-Allowed"

.field public static final SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final SET_COOKIE2:Ljava/lang/String; = "Set-Cookie2"

.field public static final SOURCE_MAP:Ljava/lang/String; = "SourceMap"

.field public static final STRICT_TRANSPORT_SECURITY:Ljava/lang/String; = "Strict-Transport-Security"

.field public static final SUPPORTS_LOADING_MODE:Ljava/lang/String; = "Supports-Loading-Mode"

.field public static final TE:Ljava/lang/String; = "TE"

.field public static final TIMING_ALLOW_ORIGIN:Ljava/lang/String; = "Timing-Allow-Origin"

.field public static final TRAILER:Ljava/lang/String; = "Trailer"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "Transfer-Encoding"

.field public static final UPGRADE:Ljava/lang/String; = "Upgrade"

.field public static final UPGRADE_INSECURE_REQUESTS:Ljava/lang/String; = "Upgrade-Insecure-Requests"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final VARY:Ljava/lang/String; = "Vary"

.field public static final VIA:Ljava/lang/String; = "Via"

.field public static final VIEWPORT_WIDTH:Ljava/lang/String; = "Viewport-Width"

.field public static final WARNING:Ljava/lang/String; = "Warning"

.field public static final WIDTH:Ljava/lang/String; = "Width"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final X_CONTENT_SECURITY_POLICY:Ljava/lang/String; = "X-Content-Security-Policy"

.field public static final X_CONTENT_SECURITY_POLICY_REPORT_ONLY:Ljava/lang/String; = "X-Content-Security-Policy-Report-Only"

.field public static final X_CONTENT_TYPE_OPTIONS:Ljava/lang/String; = "X-Content-Type-Options"

.field public static final X_DEVICE_ACCEPT_LANGUAGE:Ljava/lang/String; = "X-Device-Accept-Language"

.field public static final X_DEVICE_IP:Ljava/lang/String; = "X-Device-IP"

.field public static final X_DEVICE_REFERER:Ljava/lang/String; = "X-Device-Referer"

.field public static final X_DEVICE_REQUESTED_WITH:Ljava/lang/String; = "X-Device-Requested-With"

.field public static final X_DNS_PREFETCH_CONTROL:Ljava/lang/String; = "X-DNS-Prefetch-Control"

.field public static final X_DOWNLOAD_OPTIONS:Ljava/lang/String; = "X-Download-Options"

.field public static final X_DO_NOT_TRACK:Ljava/lang/String; = "X-Do-Not-Track"

.field public static final X_FORWARDED_FOR:Ljava/lang/String; = "X-Forwarded-For"

.field public static final X_FORWARDED_HOST:Ljava/lang/String; = "X-Forwarded-Host"

.field public static final X_FORWARDED_PORT:Ljava/lang/String; = "X-Forwarded-Port"

.field public static final X_FORWARDED_PROTO:Ljava/lang/String; = "X-Forwarded-Proto"

.field public static final X_FRAME_OPTIONS:Ljava/lang/String; = "X-Frame-Options"

.field public static final X_MOZ:Ljava/lang/String; = "X-Moz"

.field public static final X_POWERED_BY:Ljava/lang/String; = "X-Powered-By"

.field public static final X_PURPOSE:Ljava/lang/String; = "X-Purpose"

.field public static final X_REQUESTED_WITH:Ljava/lang/String; = "X-Requested-With"

.field public static final X_REQUEST_ID:Ljava/lang/String; = "X-Request-ID"

.field public static final X_USER_IP:Ljava/lang/String; = "X-User-IP"

.field public static final X_WEBKIT_CSP:Ljava/lang/String; = "X-WebKit-CSP"

.field public static final X_WEBKIT_CSP_REPORT_ONLY:Ljava/lang/String; = "X-WebKit-CSP-Report-Only"

.field public static final X_XSS_PROTECTION:Ljava/lang/String; = "X-XSS-Protection"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
