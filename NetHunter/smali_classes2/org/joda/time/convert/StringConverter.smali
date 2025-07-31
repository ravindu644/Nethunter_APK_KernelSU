.class Lorg/joda/time/convert/StringConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "StringConverter.java"

# interfaces
.implements Lorg/joda/time/convert/InstantConverter;
.implements Lorg/joda/time/convert/PartialConverter;
.implements Lorg/joda/time/convert/DurationConverter;
.implements Lorg/joda/time/convert/PeriodConverter;
.implements Lorg/joda/time/convert/IntervalConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/StringConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/joda/time/convert/StringConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/StringConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/StringConverter;->INSTANCE:Lorg/joda/time/convert/StringConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationMillis(Ljava/lang/Object;)J
    .locals 11

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x22

    const-string v3, "Invalid format: \""

    if-lt v0, v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x50

    if-eq v4, v5, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x70

    if-ne v4, v5, :cond_b

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x74

    if-ne v5, v6, :cond_b

    :cond_1
    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x53

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-ne v5, v6, :cond_b

    :cond_2
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x39

    if-gt v9, v10, :cond_3

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    if-le v6, v7, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_5

    if-ne v8, v5, :cond_5

    move v8, v6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-lez v8, :cond_8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-int/2addr v8, v4

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    goto :goto_3

    :cond_8
    const-wide/16 v1, 0x0

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_2

    :cond_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_2
    move-wide v0, v1

    move-wide v2, v3

    :goto_3
    const/16 p1, 0x3e8

    if-eqz v7, :cond_a

    neg-long v2, v2

    invoke-static {v2, v3, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v2

    neg-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_a
    invoke-static {v2, v3, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I
    .locals 2

    invoke-virtual {p4}, Lorg/joda/time/format/DateTimeFormatter;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lorg/joda/time/format/DateTimeFormatter;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p3

    :cond_0
    invoke-virtual {p4, p3}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p4, p2}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePartial;J)[I

    move-result-object p1

    return-object p1
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

    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public setInto(Lorg/joda/time/ReadWritableInterval;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_b

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "Format invalid: "

    if-lez v7, :cond_a

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v8

    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v9

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x70

    const/16 v12, 0x50

    const/4 v13, 0x0

    if-eq v10, v12, :cond_1

    if-ne v10, v11, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v6}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v6

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v14

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object/from16 v16, v13

    move-object v13, v6

    move-object/from16 v6, v16

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0, v6}, Lorg/joda/time/convert/StringConverter;->getPeriodType(Ljava/lang/Object;)Lorg/joda/time/PeriodType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v6

    const-wide/16 v14, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v12, :cond_5

    if-ne v5, v11, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v8, v4}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v13

    :goto_2
    if-eqz v2, :cond_4

    move-object v13, v2

    :cond_4
    if-eqz v6, :cond_7

    const/4 v2, -0x1

    invoke-virtual {v13, v6, v4, v5, v2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v14

    goto :goto_4

    :cond_5
    :goto_3
    if-nez v6, :cond_8

    invoke-virtual {v0, v4}, Lorg/joda/time/convert/StringConverter;->getPeriodType(Ljava/lang/Object;)Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v3

    if-eqz v2, :cond_6

    move-object v13, v2

    :cond_6
    invoke-virtual {v13, v3, v14, v15, v7}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v4

    :cond_7
    :goto_4
    invoke-interface {v1, v14, v15, v4, v5}, Lorg/joda/time/ReadWritableInterval;->setInterval(JJ)V

    invoke-interface {v1, v13}, Lorg/joda/time/ReadWritableInterval;->setChronology(Lorg/joda/time/Chronology;)V

    return-void

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Interval composed of two durations: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Format requires a \'/\' separator: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object p3

    invoke-interface {p1}, Lorg/joda/time/ReadWritablePeriod;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lorg/joda/time/format/PeriodFormatter;->parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-gez v0, :cond_0

    invoke-interface {p1}, Lorg/joda/time/ReadWritablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/joda/time/format/PeriodFormatter;->parseMutablePeriod(Ljava/lang/String;)Lorg/joda/time/MutablePeriod;

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid format: \""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
