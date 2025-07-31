.class Lorg/joda/time/convert/LongConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "LongConverter.java"

# interfaces
.implements Lorg/joda/time/convert/InstantConverter;
.implements Lorg/joda/time/convert/PartialConverter;
.implements Lorg/joda/time/convert/DurationConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/LongConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/joda/time/convert/LongConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/LongConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/LongConverter;->INSTANCE:Lorg/joda/time/convert/LongConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationMillis(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Long;

    return-object v0
.end method
