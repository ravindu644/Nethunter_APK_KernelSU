.class Lorg/joda/time/chrono/LimitChronology$LimitDurationField;
.super Lorg/joda/time/field/DecoratedDurationField;
.source "LimitChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/LimitChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitDurationField"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6fb4d99c50a123ccL


# instance fields
.field final synthetic this$0:Lorg/joda/time/chrono/LimitChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/DurationField;)V
    .locals 0

    iput-object p1, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    invoke-virtual {p2}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/joda/time/field/DecoratedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V

    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide p1

    iget-object p3, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v0, "resulting"

    invoke-virtual {p3, p1, p2, v0}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public add(JJ)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide p1

    iget-object p3, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string p4, "resulting"

    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    return-wide p1
.end method

.method public getDifference(JJ)I
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(IJ)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->getMillis(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(JJ)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getMillis(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getValue(JJ)I
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValue(JJ)I

    move-result p1

    return p1
.end method

.method public getValueAsLong(JJ)J
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValueAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method
