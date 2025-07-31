.class public abstract Lorg/joda/time/base/BasePartial;
.super Lorg/joda/time/base/AbstractPartial;
.source "BasePartial.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x85ca882d5755cL


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private final iValues:[I


# direct methods
.method protected constructor <init>()V
    .locals 3

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method protected constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 1

    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {p3, p0, p1, p2}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePartial;J)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    invoke-interface {v0, p0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/base/BasePartial;Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p2

    iput-object p2, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    iget-object p1, p1, Lorg/joda/time/base/BasePartial;->iValues:[I

    iput-object p1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/base/BasePartial;[I)V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    iget-object p1, p1, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    iput-object p1, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    iput-object p2, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    return-void
.end method

.method protected constructor <init>([ILorg/joda/time/Chronology;)V
    .locals 1

    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {p2, p0, p1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    iput-object p1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    return-void
.end method


# virtual methods
.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getValue(I)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    aget p1, v0, p1

    return p1
.end method

.method public getValues()[I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method protected setValue(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/joda/time/base/BasePartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    invoke-virtual {v0, p0, p1, v1, p2}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    iget-object p2, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected setValues([I)V
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/base/BasePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->iValues:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
