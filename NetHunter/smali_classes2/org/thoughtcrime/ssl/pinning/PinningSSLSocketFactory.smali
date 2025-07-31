.class public Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "PinningSSLSocketFactory.java"


# instance fields
.field private final pinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    invoke-static {p1}, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    move-result-object p1

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->initializePinningTrustManagers(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;[Ljava/lang/String;J)[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    invoke-virtual {v1, v0, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->pinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private initializePinningTrustManagers(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;[Ljava/lang/String;J)[Ljavax/net/ssl/TrustManager;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;-><init>(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;[Ljava/lang/String;J)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    :goto_0
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    if-nez p4, :cond_1

    if-lez p5, :cond_3

    :cond_1
    if-gez p5, :cond_2

    const/4 p5, 0x0

    :cond_2
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    :cond_3
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result p4

    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result p5

    new-instance p6, Ljava/net/InetSocketAddress;

    invoke-direct {p6, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p6, p4}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p1, p5}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    :try_start_0
    sget-object p3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {p3, p2, p1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    throw p2
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->pinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/16 p3, 0x1bb

    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->pinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    sget-object p3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {p3, p2, p1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only strict hostname verification (default)  is supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
