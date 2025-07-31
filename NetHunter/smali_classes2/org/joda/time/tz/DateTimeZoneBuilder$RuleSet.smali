.class final Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RuleSet"
.end annotation


# static fields
.field private static final YEAR_LIMIT:I


# instance fields
.field private iInitialNameKey:Ljava/lang/String;

.field private iInitialSaveMillis:I

.field private iRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private iStandardOffset:I

.field private iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

.field private iUpperYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    sput v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->YEAR_LIMIT:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    const v0, 0x7fffffff

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    return-void
.end method

.method constructor <init>(Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    iget v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    iget v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    iget-object p1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iput-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    return-void
.end method


# virtual methods
.method public addRule(Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;)V
    .locals 1

    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public buildTailZone(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;
    .locals 4

    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getToYear()I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getToYear()I

    move-result v2

    if-ne v2, v3, :cond_0

    new-instance v2, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iget-object v0, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object v1, v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;-><init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V

    return-object v2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public firstTransition(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
    .locals 13

    iget-object v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v6, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    add-int v4, v5, v0

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLjava/lang/String;II)V

    return-object v6

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->nextTransition(JI)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v2

    cmp-long v5, v2, p1

    if-nez v5, :cond_1

    new-instance v4, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-direct {v4, p1, p2, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Transition;)V

    goto :goto_1

    :cond_1
    if-lez v5, :cond_4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    invoke-virtual {v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getSaveMillis()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v2, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    iget v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Rule;I)V

    move-object v4, v2

    :cond_3
    if-nez v4, :cond_5

    new-instance v4, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getNameKey()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    move-object v5, v4

    move-wide v6, p1

    move v9, v10

    invoke-direct/range {v5 .. v10}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLjava/lang/String;II)V

    goto :goto_1

    :cond_4
    new-instance v4, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-direct {v4, p1, p2, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Transition;)V

    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getSaveMillis()I

    move-result v1

    move-wide v11, v2

    move v3, v1

    move-wide v1, v11

    goto :goto_0

    :cond_5
    :goto_1
    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    return-object v4
.end method

.method public getStandardOffset()I
    .locals 1

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    return v0
.end method

.method public getUpperLimit(I)J
    .locals 3

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-virtual {v1, v0, v2, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setInstant(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextTransition(JI)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
    .locals 10

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-object v5, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    iget v7, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-virtual {v6, p1, p2, v7, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->next(JII)J

    move-result-wide v7

    cmp-long v9, v7, p1

    if-gtz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    cmp-long v9, v7, v3

    if-gtz v9, :cond_0

    move-object v5, v6

    move-wide v3, v7

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    sget p2, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->YEAR_LIMIT:I

    if-lt p1, p2, :cond_4

    return-object v2

    :cond_4
    iget p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    const p2, 0x7fffffff

    if-ge p1, p2, :cond_5

    iget-object p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-virtual {p2, p1, v0, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setInstant(III)J

    move-result-wide p1

    cmp-long p3, v3, p1

    if-ltz p3, :cond_5

    return-object v2

    :cond_5
    new-instance p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    iget p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-direct {p1, v3, v4, v5, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Rule;I)V

    return-object p1
.end method

.method public setFixedSavings(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    iput p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    return-void
.end method

.method public setStandardOffset(I)V
    .locals 0

    iput p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    return-void
.end method

.method public setUpperLimit(ILorg/joda/time/tz/DateTimeZoneBuilder$OfYear;)V
    .locals 0

    iput p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    iput-object p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " initial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " std: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " upper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
