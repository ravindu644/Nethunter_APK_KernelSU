.class public Landroidx/constraintlayout/solver/state/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/state/Dimension$Type;
    }
.end annotation


# static fields
.field public static final FIXED_DIMENSION:Ljava/lang/Object;

.field public static final PARENT_DIMENSION:Ljava/lang/Object;

.field public static final PERCENT_DIMENSION:Ljava/lang/Object;

.field public static final SPREAD_DIMENSION:Ljava/lang/Object;

.field public static final WRAP_DIMENSION:Ljava/lang/Object;


# instance fields
.field private final WRAP_CONTENT:I

.field mInitialValue:Ljava/lang/Object;

.field mIsSuggested:Z

.field mMax:I

.field mMin:I

.field mPercent:F

.field mRatio:F

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_CONTENT:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_CONTENT:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    return-void
.end method

.method public static Fixed(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/state/Dimension;->fixed(I)Landroidx/constraintlayout/solver/state/Dimension;

    return-object v0
.end method

.method public static Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/state/Dimension;->fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;

    return-object v0
.end method

.method public static Parent()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Percent(Ljava/lang/Object;F)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/solver/state/Dimension;->percent(Ljava/lang/Object;F)Landroidx/constraintlayout/solver/state/Dimension;

    return-object v0
.end method

.method public static Spread()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Suggested(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/state/Dimension;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/state/Dimension;->suggested(I)Landroidx/constraintlayout/solver/state/Dimension;

    return-object v0
.end method

.method public static Suggested(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/state/Dimension;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/state/Dimension;->suggested(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;

    return-object v0
.end method

.method public static Wrap()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 3

    const/4 p1, 0x2

    const/4 v0, 0x1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-nez p3, :cond_7

    iget-boolean p3, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    if-eqz p3, :cond_2

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p3, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p3, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget p3, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    iget v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    invoke-virtual {p2, p1, p3, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    goto/16 :goto_2

    :cond_2
    iget p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    if-lez p1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinWidth(I)V

    :cond_3
    iget p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    if-ge p1, v1, :cond_4

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMaxWidth(I)V

    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object p3, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, p3, :cond_5

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_2

    :cond_5
    sget-object p3, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne p1, p3, :cond_6

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2

    :cond_6
    if-nez p1, :cond_f

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_2

    :cond_7
    iget-boolean p3, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    if-eqz p3, :cond_a

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p3, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p3, v1, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne p3, v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    :goto_1
    iget p3, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    iget v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    invoke-virtual {p2, p1, p3, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    goto :goto_2

    :cond_a
    iget p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    if-lez p1, :cond_b

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinHeight(I)V

    :cond_b
    iget p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    if-ge p1, v1, :cond_c

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMaxHeight(I)V

    :cond_c
    iget-object p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object p3, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, p3, :cond_d

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2

    :cond_d
    sget-object p3, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne p1, p3, :cond_e

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2

    :cond_e
    if-nez p1, :cond_f

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    :cond_f
    :goto_2
    return-void
.end method

.method public fixed(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    return-object p0
.end method

.method public fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method getRatio()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    return v0
.end method

.method getValue()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    return v0
.end method

.method public max(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    if-ltz v0, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    :cond_0
    return-object p0
.end method

.method public max(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    if-eqz p1, :cond_0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    :cond_0
    return-object p0
.end method

.method public min(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    :cond_0
    return-object p0
.end method

.method public min(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    :cond_0
    return-object p0
.end method

.method public percent(Ljava/lang/Object;F)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0

    iput p2, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    return-object p0
.end method

.method public ratio(F)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0

    return-object p0
.end method

.method setRatio(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    return-void
.end method

.method setValue(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    return-void
.end method

.method public suggested(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    return-object p0
.end method

.method public suggested(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    return-object p0
.end method
