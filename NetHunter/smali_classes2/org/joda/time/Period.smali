.class public final Lorg/joda/time/Period;
.super Lorg/joda/time/base/BasePeriod;
.source "Period.java"

# interfaces
.implements Lorg/joda/time/ReadablePeriod;
.implements Ljava/io/Serializable;


# static fields
.field public static final ZERO:Lorg/joda/time/Period;

.field private static final serialVersionUID:J = 0xa48bf3088c66fdbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/joda/time/Period;

    invoke-direct {v0}, Lorg/joda/time/Period;-><init>()V

    sput-object v0, Lorg/joda/time/Period;->ZERO:Lorg/joda/time/Period;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v9

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/joda/time/base/BasePeriod;-><init>(IIIIIIIILorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 10

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/joda/time/base/BasePeriod;-><init>(IIIIIIIILorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(IIIIIIIILorg/joda/time/PeriodType;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/joda/time/base/BasePeriod;-><init>(IIIIIIIILorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/Chronology;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/PeriodType;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/PeriodType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method private constructor <init>([ILorg/joda/time/PeriodType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;-><init>([ILorg/joda/time/PeriodType;)V

    return-void
.end method

.method private checkYearsAndMonths(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMonths()I

    move-result v0

    const-string v1, "Cannot convert to "

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/Period;->getYears()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as this period contains years and years vary in length"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as this period contains months and months vary in length"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static days(I)Lorg/joda/time/Period;
    .locals 4

    new-instance v0, Lorg/joda/time/Period;

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput p0, v1, v3

    const/4 p0, 0x4

    aput v2, v1, p0

    const/4 p0, 0x5

    aput v2, v1, p0

    const/4 p0, 0x6

    aput v2, v1, p0

    const/4 p0, 0x7

    aput v2, v1, p0

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public static fieldDifference(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Period;
    .locals 7

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    const-string v2, "ReadablePartial objects must have the same set of fields"

    if-ne v0, v1, :cond_4

    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    new-array v0, v0, [Lorg/joda/time/DurationFieldType;

    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-interface {p0, v4}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v6

    if-ne v5, v6, :cond_2

    invoke-interface {p0, v4}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    aput-object v5, v0, v4

    if-lez v4, :cond_1

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReadablePartial objects must not have overlapping fields"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    invoke-interface {p1, v4}, Lorg/joda/time/ReadablePartial;->getValue(I)I

    move-result v5

    invoke-interface {p0, v4}, Lorg/joda/time/ReadablePartial;->getValue(I)I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/joda/time/Period;

    invoke-static {v0}, Lorg/joda/time/PeriodType;->forFields([Lorg/joda/time/DurationFieldType;)Lorg/joda/time/PeriodType;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReadablePartial objects must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hours(I)Lorg/joda/time/Period;
    .locals 4

    new-instance v0, Lorg/joda/time/Period;

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    aput p0, v1, v3

    const/4 p0, 0x5

    aput v2, v1, p0

    const/4 p0, 0x6

    aput v2, v1, p0

    const/4 p0, 0x7

    aput v2, v1, p0

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public static millis(I)Lorg/joda/time/Period;
    .locals 4

    new-instance v0, Lorg/joda/time/Period;

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v2, 0x7

    aput p0, v1, v2

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public static minutes(I)Lorg/joda/time/Period;
    .locals 4

    new-instance v0, Lorg/joda/time/Period;

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput p0, v1, v3

    const/4 p0, 0x6

    aput v2, v1, p0

    const/4 p0, 0x7

    aput v2, v1, p0

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public static months(I)Lorg/joda/time/Period;
    .locals 4

    new-instance v0, Lorg/joda/time/Period;

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput p0, v1, v3

    const/4 p0, 0x2

    aput v2, v1, p0

    const/4 p0, 0x3

    aput v2, v1, p0

    const/4 p0, 0x4

    aput v2, v1, p0

    const/4 p0, 0x5

    aput v2, v1, p0

    const/4 p0, 0x6

    aput v2, v1, p0

    const/4 p0, 0x7

    aput v2, v1, p0

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/Period;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/Period;->parse(Ljava/lang/String;Lorg/joda/time/format/PeriodFormatter;)Lorg/joda/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/PeriodFormatter;)Lorg/joda/time/Period;
    .locals 0

    invoke-virtual {p1, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static seconds(I)Lorg/joda/time/Period;
    .locals 4

    new-instance v0, Lorg/joda/time/Period;

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v3, 0x6

    aput p0, v1, v3

    const/4 p0, 0x7

    aput v2, v1, p0

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public static weeks(I)Lorg/joda/time/Period;
    .locals 4

    new-instance v0, Lorg/joda/time/Period;

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput p0, v1, v3

    const/4 p0, 0x3

    aput v2, v1, p0

    const/4 p0, 0x4

    aput v2, v1, p0

    const/4 p0, 0x5

    aput v2, v1, p0

    const/4 p0, 0x6

    aput v2, v1, p0

    const/4 p0, 0x7

    aput v2, v1, p0

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public static years(I)Lorg/joda/time/Period;
    .locals 3

    new-instance v0, Lorg/joda/time/Period;

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput v2, v1, p0

    const/4 p0, 0x2

    aput v2, v1, p0

    const/4 p0, 0x3

    aput v2, v1, p0

    const/4 p0, 0x4

    aput v2, v1, p0

    const/4 p0, 0x5

    aput v2, v1, p0

    const/4 p0, 0x6

    aput v2, v1, p0

    const/4 p0, 0x7

    aput v2, v1, p0

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object v0
.end method


# virtual methods
.method public getDays()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->DAY_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getHours()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->HOUR_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getMillis()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->MILLI_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->MINUTE_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->MONTH_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->SECOND_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getWeeks()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->WEEK_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getYears()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->YEAR_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Period;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->YEAR_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->YEARS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MONTH_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->MONTHS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->WEEK_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->WEEKS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->DAY_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->DAYS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->HOUR_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->HOURS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MINUTE_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->MINUTES_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->SECOND_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->SECONDS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MILLI_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->MILLIS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public minusDays(I)Lorg/joda/time/Period;
    .locals 0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Period;->plusDays(I)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(I)Lorg/joda/time/Period;
    .locals 0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Period;->plusHours(I)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusMillis(I)Lorg/joda/time/Period;
    .locals 0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Period;->plusMillis(I)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(I)Lorg/joda/time/Period;
    .locals 0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Period;->plusMinutes(I)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(I)Lorg/joda/time/Period;
    .locals 0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Period;->plusMonths(I)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(I)Lorg/joda/time/Period;
    .locals 0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Period;->plusSeconds(I)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusWeeks(I)Lorg/joda/time/Period;
    .locals 0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Period;->plusWeeks(I)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusYears(I)Lorg/joda/time/Period;
    .locals 0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Period;->plusYears(I)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public multipliedBy(I)Lorg/joda/time/Period;
    .locals 3

    sget-object v0, Lorg/joda/time/Period;->ZERO:Lorg/joda/time/Period;

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    invoke-static {v2, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1

    :cond_2
    :goto_1
    return-object p0
.end method

.method public negated()Lorg/joda/time/Period;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/joda/time/Period;->multipliedBy(I)Lorg/joda/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public normalizedStandard()Lorg/joda/time/Period;
    .locals 1

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Period;->normalizedStandard(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public normalizedStandard(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;
    .locals 7

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getHours()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getWeeks()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x240c8400

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    new-instance v2, Lorg/joda/time/Period;

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v3

    invoke-direct {v2, v0, v1, p1, v3}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    invoke-virtual {p0}, Lorg/joda/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMonths()I

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    int-to-long v3, v0

    const-wide/16 v5, 0xc

    mul-long v3, v3, v5

    int-to-long v0, v1

    add-long/2addr v3, v0

    sget-object v0, Lorg/joda/time/DurationFieldType;->YEARS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-virtual {p1, v0}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result v0

    if-eqz v0, :cond_1

    div-long v0, v3, v5

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/joda/time/Period;->withYears(I)Lorg/joda/time/Period;

    move-result-object v2

    int-to-long v0, v0

    mul-long v0, v0, v5

    sub-long/2addr v3, v0

    :cond_1
    sget-object v0, Lorg/joda/time/DurationFieldType;->MONTHS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-virtual {p1, v0}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v3, v4}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/joda/time/Period;->withMonths(I)Lorg/joda/time/Period;

    move-result-object v0

    int-to-long v1, p1

    sub-long/2addr v3, v1

    move-object v2, v0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-nez p1, :cond_4

    :cond_3
    return-object v2

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to normalize as PeriodType is missing either years or months but period has a month/year amount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/Period;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Period;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->YEAR_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->YEARS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MONTH_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->MONTHS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->WEEK_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->WEEKS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->DAY_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->DAYS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->HOUR_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->HOURS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MINUTE_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->MINUTES_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->SECOND_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->SECONDS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    invoke-virtual {v1, p0, v2, v0, v3}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MILLI_INDEX:I

    sget-object v3, Lorg/joda/time/DurationFieldType;->MILLIS_TYPE:Lorg/joda/time/DurationFieldType;

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result p1

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public plusDays(I)Lorg/joda/time/Period;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->DAY_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public plusHours(I)Lorg/joda/time/Period;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->HOUR_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public plusMillis(I)Lorg/joda/time/Period;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MILLI_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public plusMinutes(I)Lorg/joda/time/Period;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MINUTE_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public plusMonths(I)Lorg/joda/time/Period;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MONTH_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public plusSeconds(I)Lorg/joda/time/Period;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->SECOND_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public plusWeeks(I)Lorg/joda/time/Period;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->WEEK_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public plusYears(I)Lorg/joda/time/Period;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->YEAR_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .locals 0

    return-object p0
.end method

.method public toStandardDays()Lorg/joda/time/Days;
    .locals 6

    const-string v0, "Days"

    invoke-direct {p0, v0}, Lorg/joda/time/Period;->checkYearsAndMonths(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getHours()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getWeeks()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public toStandardDuration()Lorg/joda/time/Duration;
    .locals 6

    const-string v0, "Duration"

    invoke-direct {p0, v0}, Lorg/joda/time/Period;->checkYearsAndMonths(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getHours()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getWeeks()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x240c8400

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    new-instance v2, Lorg/joda/time/Duration;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v2
.end method

.method public toStandardHours()Lorg/joda/time/Hours;
    .locals 6

    const-string v0, "Hours"

    invoke-direct {p0, v0}, Lorg/joda/time/Period;->checkYearsAndMonths(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getHours()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x18

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getWeeks()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xa8

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public toStandardMinutes()Lorg/joda/time/Minutes;
    .locals 6

    const-string v0, "Minutes"

    invoke-direct {p0, v0}, Lorg/joda/time/Period;->checkYearsAndMonths(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getHours()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x5a0

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getWeeks()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2760

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public toStandardSeconds()Lorg/joda/time/Seconds;
    .locals 6

    const-string v0, "Seconds"

    invoke-direct {p0, v0}, Lorg/joda/time/Period;->checkYearsAndMonths(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMillis()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getHours()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xe10

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x15180

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getWeeks()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x93a80

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public toStandardWeeks()Lorg/joda/time/Weeks;
    .locals 6

    const-string v0, "Weeks"

    invoke-direct {p0, v0}, Lorg/joda/time/Period;->checkYearsAndMonths(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getHours()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/joda/time/Period;->getWeeks()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x240c8400

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public withDays(I)Lorg/joda/time/Period;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->DAY_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public withField(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/Period;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-super {p0, v0, p1, p2}, Lorg/joda/time/base/BasePeriod;->setFieldInto([ILorg/joda/time/DurationFieldType;I)V

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/Period;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-super {p0, v0, p1, p2}, Lorg/joda/time/base/BasePeriod;->addFieldInto([ILorg/joda/time/DurationFieldType;I)V

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFields(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Period;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->mergePeriodInto([ILorg/joda/time/ReadablePeriod;)[I

    move-result-object p1

    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public withHours(I)Lorg/joda/time/Period;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->HOUR_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public withMillis(I)Lorg/joda/time/Period;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MILLI_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public withMinutes(I)Lorg/joda/time/Period;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MINUTE_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public withMonths(I)Lorg/joda/time/Period;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->MONTH_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public withPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;
    .locals 1

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/PeriodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/Period;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Period;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public withSeconds(I)Lorg/joda/time/Period;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->SECOND_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public withWeeks(I)Lorg/joda/time/Period;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->WEEK_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method

.method public withYears(I)Lorg/joda/time/Period;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/Period;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    sget v2, Lorg/joda/time/PeriodType;->YEAR_INDEX:I

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/PeriodType;->setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z

    new-instance p1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/Period;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/joda/time/Period;-><init>([ILorg/joda/time/PeriodType;)V

    return-object p1
.end method
