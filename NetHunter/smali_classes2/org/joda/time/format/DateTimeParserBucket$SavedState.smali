.class Lorg/joda/time/format/DateTimeParserBucket$SavedState;
.super Ljava/lang/Object;
.source "DateTimeParserBucket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeParserBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavedState"
.end annotation


# instance fields
.field final iOffset:Ljava/lang/Integer;

.field final iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

.field final iSavedFieldsCount:I

.field final iZone:Lorg/joda/time/DateTimeZone;

.field final synthetic this$0:Lorg/joda/time/format/DateTimeParserBucket;


# direct methods
.method constructor <init>(Lorg/joda/time/format/DateTimeParserBucket;)V
    .locals 1

    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->this$0:Lorg/joda/time/format/DateTimeParserBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$000(Lorg/joda/time/format/DateTimeParserBucket;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$100(Lorg/joda/time/format/DateTimeParserBucket;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iOffset:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$200(Lorg/joda/time/format/DateTimeParserBucket;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$300(Lorg/joda/time/format/DateTimeParserBucket;)I

    move-result p1

    iput p1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFieldsCount:I

    return-void
.end method


# virtual methods
.method restoreState(Lorg/joda/time/format/DateTimeParserBucket;)Z
    .locals 3

    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->this$0:Lorg/joda/time/format/DateTimeParserBucket;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->access$002(Lorg/joda/time/format/DateTimeParserBucket;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iOffset:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->access$102(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->access$202(Lorg/joda/time/format/DateTimeParserBucket;[Lorg/joda/time/format/DateTimeParserBucket$SavedField;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    iget v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFieldsCount:I

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$300(Lorg/joda/time/format/DateTimeParserBucket;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    invoke-static {p1, v2}, Lorg/joda/time/format/DateTimeParserBucket;->access$402(Lorg/joda/time/format/DateTimeParserBucket;Z)Z

    :cond_1
    iget v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFieldsCount:I

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->access$302(Lorg/joda/time/format/DateTimeParserBucket;I)I

    return v2
.end method
