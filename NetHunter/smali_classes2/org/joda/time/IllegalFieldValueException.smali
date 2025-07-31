.class public Lorg/joda/time/IllegalFieldValueException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalFieldValueException.java"


# static fields
.field private static final serialVersionUID:J = 0x578263712b904f39L


# instance fields
.field private final iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

.field private final iDurationFieldType:Lorg/joda/time/DurationFieldType;

.field private final iFieldName:Ljava/lang/String;

.field private final iLowerBound:Ljava/lang/Number;

.field private iMessage:Ljava/lang/String;

.field private final iNumberValue:Ljava/lang/Number;

.field private final iStringValue:Ljava/lang/String;

.field private final iUpperBound:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    iput-object p3, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    iput-object p4, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, p4, v1}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    iput-object p3, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    iput-object p4, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    const/4 p5, 0x0

    iput-object p5, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    iput-object p5, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    iput-object p3, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    iput-object p4, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, v1, p3}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DurationFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2

    invoke-virtual {p1}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, p4, v1}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    iput-object p3, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    iput-object p4, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DurationFieldType;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-void
.end method

.method private static createMessage(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    const-string p0, "is not supported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "must not be larger than "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const-string p0, "must not be smaller than "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p0, "must be in the range ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p4, :cond_3

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string p1, " is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDateTimeFieldType()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getDurationFieldType()Lorg/joda/time/DurationFieldType;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getIllegalNumberValue()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    return-object v0
.end method

.method public getIllegalStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIllegalValueAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLowerBound()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperBound()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    return-object v0
.end method

.method public prependMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
