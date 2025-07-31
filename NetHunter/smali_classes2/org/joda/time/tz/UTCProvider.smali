.class public final Lorg/joda/time/tz/UTCProvider;
.super Ljava/lang/Object;
.source "UTCProvider.java"

# interfaces
.implements Lorg/joda/time/tz/Provider;


# static fields
.field private static final AVAILABLE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/joda/time/tz/UTCProvider;->AVAILABLE_IDS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/joda/time/tz/UTCProvider;->AVAILABLE_IDS:Ljava/util/Set;

    return-object v0
.end method

.method public getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 1

    const-string v0, "UTC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
