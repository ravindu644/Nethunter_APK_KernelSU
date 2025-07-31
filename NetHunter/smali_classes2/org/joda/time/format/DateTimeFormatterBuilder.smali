.class public Lorg/joda/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;
    }
.end annotation


# instance fields
.field private iElementPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iFormatter:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    return-void
.end method

.method private append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method static appendUnknownString(Ljava/lang/Appendable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    const v0, 0xfffd

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkParser(Lorg/joda/time/format/DateTimeParser;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No parser supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No printer supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static csStartsWith(Ljava/lang/CharSequence;ILjava/lang/String;)Z
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v3, p1, v1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static csStartsWithIgnoreCase(Ljava/lang/CharSequence;ILjava/lang/String;)Z
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v3, p1, v1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private getFormatter()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    if-nez v0, :cond_4

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;-><init>(Ljava/util/List;)V

    :cond_3
    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method private isFormatter(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isParser(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/joda/time/format/InternalParser;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->isParser()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isPrinter(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/joda/time/format/InternalPrinter;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->isPrinter()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter0()Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatter;->getParser0()Lorg/joda/time/format/InternalParser;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No formatter supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkParser(Lorg/joda/time/format/DateTimeParser;)V

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V

    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Lorg/joda/time/format/DateTimePrinter;Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V

    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkParser(Lorg/joda/time/format/DateTimeParser;)V

    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object p1

    invoke-static {p2}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Lorg/joda/time/format/DateTimePrinter;[Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 5

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V

    :cond_0
    if-eqz p2, :cond_5

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    aget-object v0, p2, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object p1

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parser supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-array v3, v0, [Lorg/joda/time/format/InternalParser;

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_4

    aget-object v4, p2, v1

    invoke-static {v4}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object v4

    aput-object v4, v3, v1

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Incomplete parser array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object p1

    new-instance p2, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;

    invoke-direct {p2, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;-><init>([Lorg/joda/time/format/InternalParser;)V

    invoke-direct {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parsers supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendCenturyOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->centuryOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendClockhourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendClockhourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendDayOfWeekShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendShortText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDayOfWeekText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    if-eqz p1, :cond_3

    if-ge p3, p2, :cond_0

    move p3, p2

    :cond_0
    if-ltz p2, :cond_2

    if-lez p3, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, v0, :cond_1

    new-instance p2, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;

    invoke-direct {p2, p1, p3, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;

    invoke-direct {v0, p1, p3, v1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendEraText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal number of digits: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendFixedSignedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal number of digits: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    if-eqz p1, :cond_2

    if-ge p3, p2, :cond_0

    move p3, p2

    :cond_0
    if-ltz p2, :cond_1

    if-lez p3, :cond_1

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;

    invoke-direct {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;-><init>(Lorg/joda/time/DateTimeFieldType;II)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendFractionOfDay(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFractionOfHour(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFractionOfMinute(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFractionOfSecond(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendHalfdayOfDayText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->halfdayOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendHourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendHourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;

    invoke-direct {v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;

    invoke-direct {v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Literal must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendMillisOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMillisOfSecond(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMinuteOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMinuteOfHour(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMonthOfYearShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendShortText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendMonthOfYearText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkParser(Lorg/joda/time/format/DateTimeParser;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/joda/time/format/InternalParser;

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    new-instance p1, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;

    invoke-direct {p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;-><init>([Lorg/joda/time/format/InternalParser;)V

    invoke-direct {p0, v1, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 0

    invoke-static {p0, p1}, Lorg/joda/time/format/DateTimeFormat;->appendPatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V

    return-object p0
.end method

.method public appendSecondOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendSecondOfMinute(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendShortText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;-><init>(Lorg/joda/time/DateTimeFieldType;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    if-eqz p1, :cond_3

    if-ge p3, p2, :cond_0

    move p3, p2

    :cond_0
    if-ltz p2, :cond_2

    if-lez p3, :cond_2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    new-instance p2, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;

    invoke-direct {p2, p1, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;

    invoke-direct {v1, p1, p3, v0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    invoke-direct {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;-><init>(Lorg/joda/time/DateTimeFieldType;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendTimeZoneId()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->INSTANCE:Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    sget-object v1, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->INSTANCE:Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneName()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 3

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneName(Ljava/util/Map;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 7

    new-instance v6, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTimeZoneOffset(Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 7

    new-instance v6, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTimeZoneShortName()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 3

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneShortName(Ljava/util/Map;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTwoDigitWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitWeekyear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTwoDigitWeekyear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTwoDigitYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitYear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTwoDigitYear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendWeekyear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendYear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendYearOfCentury(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendYearOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public canBuildFormatter()Z
    .locals 1

    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isFormatter(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canBuildParser()Z
    .locals 1

    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canBuildPrinter()Z
    .locals 1

    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public toFormatter()Lorg/joda/time/format/DateTimeFormatter;
    .locals 4

    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/joda/time/format/InternalPrinter;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/joda/time/format/InternalParser;

    :cond_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Both printing and parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    invoke-direct {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)V

    return-object v0
.end method

.method public toParser()Lorg/joda/time/format/DateTimeParser;
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/joda/time/format/InternalParser;

    invoke-static {v0}, Lorg/joda/time/format/InternalParserDateTimeParser;->of(Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toPrinter()Lorg/joda/time/format/DateTimePrinter;
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/joda/time/format/InternalPrinter;

    invoke-static {v0}, Lorg/joda/time/format/InternalPrinterDateTimePrinter;->of(Lorg/joda/time/format/InternalPrinter;)Lorg/joda/time/format/DateTimePrinter;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
