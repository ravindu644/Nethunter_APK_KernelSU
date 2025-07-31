.class Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "LimitChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/LimitChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitDateTimeField"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x21cbf29565ca6e70L


# instance fields
.field private final iDurationField:Lorg/joda/time/DurationField;

.field private final iLeapDurationField:Lorg/joda/time/DurationField;

.field private final iRangeDurationField:Lorg/joda/time/DurationField;

.field final synthetic this$0:Lorg/joda/time/chrono/LimitChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V
    .locals 0

    iput-object p1, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    invoke-virtual {p2}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    iput-object p3, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    iput-object p4, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iRangeDurationField:Lorg/joda/time/DurationField;

    iput-object p5, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iLeapDurationField:Lorg/joda/time/DurationField;

    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    iget-object p3, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v0, "resulting"

    invoke-virtual {p3, p1, p2, v0}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public add(JJ)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide p1

    iget-object p3, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string p4, "resulting"

    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public addWrapField(JI)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide p1

    iget-object p3, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v0, "resulting"

    invoke-virtual {p3, p1, p2, v0}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public get(J)I
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDifference(JJ)I
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getLeapAmount(J)I
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result p1

    return p1
.end method

.method public final getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iLeapDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public getMaximumValue(J)I
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result p1

    return p1
.end method

.method public getMinimumValue(J)I
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result p1

    return p1
.end method

.method public final getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iRangeDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result p1

    return p1
.end method

.method public remainder(J)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide p1

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "resulting"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public roundCeiling(J)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide p1

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "resulting"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "resulting"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public roundHalfCeiling(J)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide p1

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "resulting"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public roundHalfEven(J)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide p1

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "resulting"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public roundHalfFloor(J)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide p1

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "resulting"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public set(JI)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    iget-object p3, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v0, "resulting"

    invoke-virtual {p3, p1, p2, v0}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    iget-object p3, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string p4, "resulting"

    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method
