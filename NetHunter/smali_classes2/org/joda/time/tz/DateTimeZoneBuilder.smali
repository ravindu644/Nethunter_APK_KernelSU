.class public Lorg/joda/time/tz/DateTimeZoneBuilder;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
    }
.end annotation


# instance fields
.field private final iRuleSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    return-void
.end method

.method private addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;",
            ">;",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-virtual {p2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->isTransitionFrom(Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    :cond_1
    const/4 v4, 0x2

    if-lt v0, v4, :cond_2

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v5

    :cond_2
    invoke-virtual {v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v0

    invoke-virtual {v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v3

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v5

    int-to-long v7, v0

    add-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->withMillis(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result p1

    return p1
.end method

.method private static buildFixedZone(Ljava/lang/String;Ljava/lang/String;II)Lorg/joda/time/DateTimeZone;
    .locals 1

    const-string v0, "UTC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method private getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;
    .locals 9

    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v2, -0x80000000

    const/16 v3, 0x77

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addCutover(ICIIIZI)Lorg/joda/time/tz/DateTimeZoneBuilder;

    :cond_0
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    return-object v0
.end method

.method public static readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_3

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid encoding"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v4

    long-to-int p0, v4

    invoke-direct {v0, p1, v1, v3, p0}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    sget-object p0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p0}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    :cond_2
    return-object v0

    :cond_3
    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-result-object p0

    invoke-static {p0}, Lorg/joda/time/tz/CachedDateTimeZone;->forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static readFrom(Ljava/io/InputStream;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Ljava/io/DataInput;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/DataInput;

    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p0

    return-object p0
.end method

.method static readMillis(Ljava/io/DataInput;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    shr-int/lit8 v1, v0, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x1a

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    shl-int/lit8 p0, v0, 0x1a

    shr-int/2addr p0, v4

    int-to-long v0, p0

    const-wide/32 v2, 0x1b7740

    :goto_0
    mul-long v0, v0, v2

    return-wide v0

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    return-wide v0

    :cond_1
    int-to-long v0, v0

    const/16 v2, 0x3a

    shl-long/2addr v0, v2

    shr-long/2addr v0, v4

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p0

    int-to-long v2, p0

    or-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_2
    shl-int/2addr v0, v4

    shr-int/2addr v0, v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p0

    or-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    goto :goto_0
.end method

.method static writeMillis(Ljava/io/DataOutput;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x1b7740

    rem-long v2, p1, v0

    const-wide/16 v4, 0x3f

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    div-long v0, p1, v0

    const/16 v2, 0x3a

    shl-long v8, v0, v2

    shr-long v2, v8, v2

    cmp-long v8, v2, v0

    if-nez v8, :cond_0

    and-long p1, v0, v4

    long-to-int p2, p1

    invoke-interface {p0, p2}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :cond_0
    const-wide/32 v0, 0xea60

    rem-long v2, p1, v0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    div-long v0, p1, v0

    const/16 v2, 0x22

    shl-long v8, v0, v2

    shr-long v2, v8, v2

    cmp-long v8, v2, v0

    if-nez v8, :cond_1

    const-wide/32 p1, 0x3fffffff

    and-long/2addr p1, v0

    long-to-int p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    or-int/2addr p1, p2

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    rem-long v2, p1, v0

    cmp-long v8, v2, v6

    if-nez v8, :cond_2

    div-long v0, p1, v0

    const/16 v2, 0x1a

    shl-long v8, v0, v2

    shr-long v2, v8, v2

    cmp-long v8, v2, v0

    if-nez v8, :cond_2

    const/16 p1, 0x20

    shr-long p1, v0, p1

    and-long/2addr p1, v4

    long-to-int p2, p1

    or-int/lit16 p1, p2, 0x80

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    const-wide/16 p1, -0x1

    and-long/2addr p1, v0

    long-to-int p2, p1

    invoke-interface {p0, p2}, Ljava/io/DataOutput;->writeInt(I)V

    return-void

    :cond_2
    cmp-long v0, p1, v6

    if-gez v0, :cond_3

    const/16 v0, 0xff

    goto :goto_0

    :cond_3
    const/16 v0, 0xc0

    :goto_0
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-interface {p0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public addCutover(ICIIIZI)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 8

    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move-object v1, v0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;-><init>(CIIIZI)V

    iget-object p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    invoke-virtual {p2, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->setUpperLimit(ILorg/joda/time/tz/DateTimeZoneBuilder$OfYear;)V

    :cond_0
    iget-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    new-instance p2, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    invoke-direct {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRecurringSavings(Ljava/lang/String;IIICIIIZI)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 10

    move v0, p3

    move v1, p4

    if-gt v0, v1, :cond_0

    new-instance v9, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move-object v2, v9

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;-><init>(CIIIZI)V

    new-instance v2, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-object v3, p1

    move v4, p2

    invoke-direct {v2, v9, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;Ljava/lang/String;I)V

    new-instance v3, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    invoke-direct {v3, v2, p3, p4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;II)V

    invoke-direct {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->addRule(Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;)V

    :cond_0
    return-object p0
.end method

.method public setFixedSavings(Ljava/lang/String;I)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 1

    invoke-direct {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->setFixedSavings(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setStandardOffset(I)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 1

    invoke-direct {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->setStandardOffset(I)V

    return-object p0
.end method

.method public toDateTimeZone(Ljava/lang/String;Z)Lorg/joda/time/DateTimeZone;
    .locals 12

    if-eqz p1, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    iget-object v7, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    invoke-virtual {v7, v4, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->firstTransition(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0, v0, v8}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    invoke-virtual {v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v4

    invoke-virtual {v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getSaveMillis()I

    move-result v8

    new-instance v9, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    invoke-direct {v9, v7}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;)V

    :goto_1
    invoke-virtual {v9, v4, v5, v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->nextTransition(JI)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getSaveMillis()I

    move-result v4

    if-nez v3, :cond_2

    add-int/lit8 v5, v1, -0x1

    if-ne v6, v5, :cond_2

    invoke-virtual {v9, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->buildTailZone(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    move-result-object v3

    :cond_2
    move-wide v10, v7

    move v8, v4

    move-wide v4, v10

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v9, v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->getUpperLimit(I)J

    move-result-wide v4

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v3, :cond_5

    return-object v3

    :cond_5
    const-string p2, "UTC"

    invoke-static {p1, p2, v2, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->buildFixedZone(Ljava/lang/String;Ljava/lang/String;II)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    if-nez v3, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getNameKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v1

    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getStandardOffset()I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->buildFixedZone(Ljava/lang/String;Ljava/lang/String;II)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p1, p2, v0, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->create(Ljava/lang/String;ZLjava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->isCachable()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {p1}, Lorg/joda/time/tz/CachedDateTimeZone;->forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;

    move-result-object p1

    :cond_8
    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public writeTo(Ljava/lang/String;Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->toDateTimeZone(Ljava/lang/String;Z)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    instance-of v0, p1, Lorg/joda/time/tz/FixedDateTimeZone;

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result p1

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/joda/time/tz/CachedDateTimeZone;

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    check-cast p1, Lorg/joda/time/tz/CachedDateTimeZone;

    invoke-virtual {p1}, Lorg/joda/time/tz/CachedDateTimeZone;->getUncachedZone()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :goto_0
    check-cast p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    invoke-virtual {p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->writeTo(Ljava/io/DataOutput;)V

    :goto_1
    return-void
.end method

.method public writeTo(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/io/DataOutput;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/io/DataOutput;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeTo(Ljava/lang/String;Ljava/io/DataOutput;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeTo(Ljava/lang/String;Ljava/io/DataOutput;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :goto_0
    return-void
.end method
