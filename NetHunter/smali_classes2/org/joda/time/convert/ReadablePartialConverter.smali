.class Lorg/joda/time/convert/ReadablePartialConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "ReadablePartialConverter.java"

# interfaces
.implements Lorg/joda/time/convert/PartialConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/ReadablePartialConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/joda/time/convert/ReadablePartialConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/ReadablePartialConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/ReadablePartialConverter;->INSTANCE:Lorg/joda/time/convert/ReadablePartialConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;
    .locals 0

    if-nez p2, :cond_0

    check-cast p1, Lorg/joda/time/ReadablePartial;

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/joda/time/Chronology;

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/convert/ReadablePartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p1

    return-object p1
.end method

.method public getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;)[I
    .locals 4

    check-cast p2, Lorg/joda/time/ReadablePartial;

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, v1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    return-object v1
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

    const-class v0, Lorg/joda/time/ReadablePartial;

    return-object v0
.end method
