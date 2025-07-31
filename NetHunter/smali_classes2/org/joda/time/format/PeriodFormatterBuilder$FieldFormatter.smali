.class Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/PeriodPrinter;
.implements Lorg/joda/time/format/PeriodParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldFormatter"
.end annotation


# instance fields
.field private final iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

.field private final iFieldType:I

.field private final iMaxParsedDigits:I

.field private final iMinPrintedDigits:I

.field private final iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

.field private final iPrintZeroSetting:I

.field private final iRejectSignedValues:Z

.field private final iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;


# direct methods
.method constructor <init>(IIIZI[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMinPrintedDigits:I

    iput p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrintZeroSetting:I

    iput p3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMaxParsedDigits:I

    iput-boolean p4, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iRejectSignedValues:Z

    iput p5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    iput-object p6, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iput-object p7, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    iput-object p8, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMinPrintedDigits:I

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMinPrintedDigits:I

    iget v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrintZeroSetting:I

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrintZeroSetting:I

    iget v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMaxParsedDigits:I

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMaxParsedDigits:I

    iget-boolean v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iRejectSignedValues:Z

    iput-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iRejectSignedValues:Z

    iget v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    iget-object v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iget-object v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    iget-object p1, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz p1, :cond_0

    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;-><init>(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V

    move-object p2, v0

    :cond_0
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    return-void
.end method

.method private parseInt(Ljava/lang/String;II)I
    .locals 3

    const/16 v0, 0xa

    if-lt p3, v0, :cond_0

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-gtz p3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p3, p3, -0x1

    const/16 v2, 0x2d

    if-ne p2, v2, :cond_3

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_2

    return v0

    :cond_2
    add-int/lit8 p2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    move v1, p2

    move p2, v0

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 p2, p2, -0x30

    :goto_0
    add-int/lit8 v2, p3, -0x1

    if-lez p3, :cond_4

    shl-int/lit8 p3, p2, 0x3

    shl-int/lit8 p2, p2, 0x1

    add-int/2addr p3, p2

    add-int/lit8 p2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p3, p3, -0x30

    move v1, p2

    move p2, p3

    move p3, v2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    neg-int p2, p2

    :cond_5
    return p2
.end method


# virtual methods
.method public calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
    .locals 8

    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->getFieldValue(Lorg/joda/time/ReadablePeriod;)J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p2}, Lorg/joda/time/format/FormatUtils;->calculateDigitCount(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMinPrintedDigits:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    :goto_0
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    const/16 v4, 0x9

    const-wide/16 v5, 0x3e8

    if-ne v3, v4, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    rem-long/2addr v3, v5

    cmp-long v7, v3, v1

    if-nez v7, :cond_2

    add-int/lit8 v0, v0, -0x4

    :cond_2
    div-long/2addr p1, v5

    :cond_3
    long-to-int p2, p1

    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->calculatePrintedLength(I)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->calculatePrintedLength(I)I

    move-result p1

    add-int/2addr v0, p1

    :cond_5
    return v0
.end method

.method public countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
    .locals 3

    const/4 p3, 0x0

    if-gtz p2, :cond_0

    return p3

    :cond_0
    iget p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrintZeroSetting:I

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->getFieldValue(Lorg/joda/time/ReadablePeriod;)J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public finish([Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;)V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->finish(Ljava/util/Set;)V

    :cond_2
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->finish(Ljava/util/Set;)V

    :cond_3
    return-void
.end method

.method getFieldType()I
    .locals 1

    iget v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    return v0
.end method

.method getFieldValue(Lorg/joda/time/ReadablePeriod;)J
    .locals 9

    iget v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrintZeroSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_1

    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    invoke-virtual {p0, v0, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->isSupported(Lorg/joda/time/PeriodType;I)Z

    move-result v3

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    packed-switch v3, :pswitch_data_0

    return-wide v1

    :pswitch_0
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v4

    int-to-long v5, v3

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    int-to-long v3, v4

    add-long/2addr v5, v3

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    goto :goto_1

    :pswitch_7
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    goto :goto_1

    :pswitch_8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    move-result v3

    :goto_1
    int-to-long v5, v3

    :goto_2
    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    if-nez v7, :cond_9

    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrintZeroSetting:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v7, 0x2

    if-eq v3, v7, :cond_3

    const/4 p1, 0x5

    if-eq v3, p1, :cond_2

    goto :goto_4

    :cond_2
    return-wide v1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->isZero(Lorg/joda/time/ReadablePeriod;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    aget-object p1, p1, v3

    if-ne p1, p0, :cond_5

    add-int/2addr v3, v4

    :goto_3
    const/16 p1, 0x9

    if-gt v3, p1, :cond_9

    invoke-virtual {p0, v0, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->isSupported(Lorg/joda/time/PeriodType;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    aget-object p1, p1, v3

    if-eqz p1, :cond_4

    return-wide v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    return-wide v1

    :cond_6
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->isZero(Lorg/joda/time/ReadablePeriod;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    aget-object p1, p1, v3

    if-ne p1, p0, :cond_8

    const/16 p1, 0x8

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_7
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_9

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->isSupported(Lorg/joda/time/PeriodType;I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    aget-object v3, v3, p1

    if-eqz v3, :cond_7

    :cond_8
    return-wide v1

    :cond_9
    :goto_4
    return-wide v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isSupported(Lorg/joda/time/PeriodType;I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :pswitch_1
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    return p1

    :pswitch_2
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    return p1

    :pswitch_4
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    return p1

    :pswitch_5
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    return p1

    :pswitch_6
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    return p1

    :pswitch_7
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    return p1

    :pswitch_8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isZero(Lorg/joda/time/ReadablePeriod;)Z
    .locals 4

    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrintZeroSetting:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_2

    if-eqz v4, :cond_1

    not-int v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    return v1

    :cond_2
    iget-object v5, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz v5, :cond_5

    invoke-interface {v5, v2, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->parse(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    not-int v1, v3

    return v1

    :cond_4
    return v3

    :cond_5
    :goto_2
    iget-object v5, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    const/4 v8, -0x1

    if-eqz v5, :cond_8

    if-nez v4, :cond_8

    invoke-interface {v5, v2, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->scan(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    not-int v1, v5

    return v1

    :cond_7
    return v5

    :cond_8
    const/4 v5, -0x1

    :goto_3
    if-nez v4, :cond_9

    invoke-interface/range {p1 .. p1}, Lorg/joda/time/ReadWritablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v4

    iget v9, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    invoke-virtual {v0, v4, v9}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->isSupported(Lorg/joda/time/PeriodType;I)Z

    move-result v4

    if-nez v4, :cond_9

    return v3

    :cond_9
    if-lez v5, :cond_a

    iget v4, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMaxParsedDigits:I

    sub-int v9, v5, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4

    :cond_a
    iget v4, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMaxParsedDigits:I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    if-ge v9, v4, :cond_14

    add-int v14, v3, v9

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v7, 0x39

    const/16 v6, 0x30

    if-nez v9, :cond_f

    const/16 v12, 0x2d

    if-eq v15, v12, :cond_b

    const/16 v13, 0x2b

    if-ne v15, v13, :cond_f

    :cond_b
    iget-boolean v13, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iRejectSignedValues:Z

    if-nez v13, :cond_f

    if-ne v15, v12, :cond_c

    const/4 v11, 0x1

    goto :goto_6

    :cond_c
    const/4 v11, 0x0

    :goto_6
    add-int/lit8 v12, v9, 0x1

    if-ge v12, v4, :cond_14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_14

    if-le v13, v7, :cond_d

    goto :goto_9

    :cond_d
    if-eqz v11, :cond_e

    move v9, v12

    goto :goto_7

    :cond_e
    add-int/lit8 v3, v3, 0x1

    :goto_7
    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_5

    :cond_f
    if-lt v15, v6, :cond_10

    if-gt v15, v7, :cond_10

    const/4 v10, 0x1

    goto :goto_8

    :cond_10
    const/16 v6, 0x2e

    if-eq v15, v6, :cond_11

    const/16 v6, 0x2c

    if-ne v15, v6, :cond_14

    :cond_11
    iget v6, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_12

    const/16 v7, 0x9

    if-ne v6, v7, :cond_14

    :cond_12
    if-ltz v8, :cond_13

    goto :goto_9

    :cond_13
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v8, v14

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_14
    :goto_9
    if-nez v10, :cond_15

    not-int v1, v3

    return v1

    :cond_15
    if-ltz v5, :cond_16

    add-int v4, v3, v9

    if-eq v4, v5, :cond_16

    return v3

    :cond_16
    iget v4, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_17

    const/16 v5, 0x9

    if-eq v4, v5, :cond_17

    invoke-direct {v0, v2, v3, v9}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->parseInt(Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->setFieldValue(Lorg/joda/time/ReadWritablePeriod;II)V

    goto :goto_c

    :cond_17
    const/4 v4, 0x7

    const/4 v5, 0x6

    if-gez v8, :cond_18

    invoke-direct {v0, v2, v3, v9}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->parseInt(Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->setFieldValue(Lorg/joda/time/ReadWritablePeriod;II)V

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->setFieldValue(Lorg/joda/time/ReadWritablePeriod;II)V

    goto :goto_c

    :cond_18
    const/4 v6, 0x0

    sub-int v7, v8, v3

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-direct {v0, v2, v3, v7}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->parseInt(Ljava/lang/String;II)I

    move-result v7

    invoke-virtual {v0, v1, v5, v7}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->setFieldValue(Lorg/joda/time/ReadWritablePeriod;II)V

    add-int v5, v3, v9

    sub-int/2addr v5, v8

    if-gtz v5, :cond_19

    goto :goto_b

    :cond_19
    const/4 v6, 0x3

    if-lt v5, v6, :cond_1a

    invoke-direct {v0, v2, v8, v6}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->parseInt(Ljava/lang/String;II)I

    move-result v5

    move v6, v5

    goto :goto_a

    :cond_1a
    invoke-direct {v0, v2, v8, v5}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->parseInt(Ljava/lang/String;II)I

    move-result v6

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1b

    mul-int/lit8 v6, v6, 0x64

    goto :goto_a

    :cond_1b
    mul-int/lit8 v6, v6, 0xa

    :goto_a
    if-nez v11, :cond_1c

    if-gez v7, :cond_1d

    :cond_1c
    neg-int v6, v6

    :cond_1d
    :goto_b
    invoke-virtual {v0, v1, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->setFieldValue(Lorg/joda/time/ReadWritablePeriod;II)V

    :goto_c
    add-int/2addr v3, v9

    if-ltz v3, :cond_1e

    iget-object v1, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz v1, :cond_1e

    invoke-interface {v1, v2, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->parse(Ljava/lang/String;I)I

    move-result v3

    :cond_1e
    return v3
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->getFieldValue(Lorg/joda/time/ReadablePeriod;)J

    move-result-wide p2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    long-to-int v0, p2

    iget v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x8

    if-lt v1, v4, :cond_1

    div-long v0, p2, v2

    long-to-int v0, v0

    :cond_1
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->printTo(Ljava/io/Writer;I)V

    :cond_2
    iget v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMinPrintedDigits:I

    const/4 v5, 0x1

    if-gt v1, v5, :cond_3

    invoke-static {p1, v0}, Lorg/joda/time/format/FormatUtils;->writeUnpaddedInteger(Ljava/io/Writer;I)V

    goto :goto_0

    :cond_3
    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    :goto_0
    iget v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    if-lt v1, v4, :cond_5

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    rem-long/2addr p2, v2

    long-to-int p3, p2

    iget p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    if-eq p2, v4, :cond_4

    if-lez p3, :cond_5

    :cond_4
    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    const/4 p2, 0x3

    invoke-static {p1, p3, p2}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    :cond_5
    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz p2, :cond_6

    invoke-interface {p2, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->printTo(Ljava/io/Writer;I)V

    :cond_6
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 7

    invoke-virtual {p0, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->getFieldValue(Lorg/joda/time/ReadablePeriod;)J

    move-result-wide p2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    long-to-int v0, p2

    iget v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x8

    if-lt v1, v4, :cond_1

    div-long v0, p2, v2

    long-to-int v0, v0

    :cond_1
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->printTo(Ljava/lang/StringBuffer;I)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iMinPrintedDigits:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    invoke-static {p1, v0}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    :cond_3
    invoke-static {p1, v0, v5}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    :goto_0
    iget v5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    if-lt v5, v4, :cond_6

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    rem-long/2addr v5, v2

    long-to-int v2, v5

    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iFieldType:I

    if-eq v3, v4, :cond_4

    if-lez v2, :cond_6

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-gez v5, :cond_5

    const-wide/16 v3, -0x3e8

    cmp-long v5, p2, v3

    if-lez v5, :cond_5

    const/16 p2, 0x2d

    invoke-virtual {p1, v1, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :cond_5
    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p2, 0x3

    invoke-static {p1, v2, p2}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    :cond_6
    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->iSuffix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->printTo(Ljava/lang/StringBuffer;I)V

    :cond_7
    return-void
.end method

.method setFieldValue(Lorg/joda/time/ReadWritablePeriod;II)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setMillis(I)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setSeconds(I)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setMinutes(I)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setHours(I)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setDays(I)V

    goto :goto_0

    :pswitch_5
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setWeeks(I)V

    goto :goto_0

    :pswitch_6
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setMonths(I)V

    goto :goto_0

    :pswitch_7
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setYears(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
