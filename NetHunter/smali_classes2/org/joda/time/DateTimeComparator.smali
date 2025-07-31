.class public Lorg/joda/time/DateTimeComparator;
.super Ljava/lang/Object;
.source "DateTimeComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

.field private static final DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

.field private static final TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

.field private static final serialVersionUID:J = -0x549e1a37ff9c2abcL


# instance fields
.field private final iLowerLimit:Lorg/joda/time/DateTimeFieldType;

.field private final iUpperLimit:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/joda/time/DateTimeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeComparator;->ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeComparator;->DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeComparator;->TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    iput-object p2, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    return-void
.end method

.method public static getDateOnlyInstance()Lorg/joda/time/DateTimeComparator;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeComparator;->DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object v0
.end method

.method public static getInstance()Lorg/joda/time/DateTimeComparator;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeComparator;->ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/joda/time/DateTimeComparator;->getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    sget-object p0, Lorg/joda/time/DateTimeComparator;->ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object p0

    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_1

    sget-object p0, Lorg/joda/time/DateTimeComparator;->DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    if-ne p1, v0, :cond_2

    sget-object p0, Lorg/joda/time/DateTimeComparator;->TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object p0

    :cond_2
    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    return-object v0
.end method

.method public static getTimeOnlyInstance()Lorg/joda/time/DateTimeComparator;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeComparator;->TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-static {v0, v1}, Lorg/joda/time/DateTimeComparator;->getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getInstantConverter(Ljava/lang/Object;)Lorg/joda/time/convert/InstantConverter;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/joda/time/Chronology;

    invoke-interface {v0, p1, v1}, Lorg/joda/time/convert/InstantConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lorg/joda/time/convert/InstantConverter;->getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J

    move-result-wide v3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/joda/time/convert/ConverterManager;->getInstantConverter(Ljava/lang/Object;)Lorg/joda/time/convert/InstantConverter;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Lorg/joda/time/convert/InstantConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/joda/time/convert/InstantConverter;->getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J

    move-result-wide p1

    iget-object v5, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v3

    iget-object v5, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v5, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    :cond_1
    iget-object v5, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v2}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v3

    iget-object v2, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v2, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide p1

    :cond_2
    cmp-long v1, v3, p1

    if-gez v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-lez v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/joda/time/DateTimeComparator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/joda/time/DateTimeComparator;

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getLowerLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getLowerLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getUpperLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getUpperLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getLowerLimit()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getUpperLimit()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    mul-int/lit8 v1, v1, 0x7b

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    const-string v2, "]"

    const-string v3, "DateTimeComparator["

    const-string v4, ""

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v1, :cond_2

    move-object v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
