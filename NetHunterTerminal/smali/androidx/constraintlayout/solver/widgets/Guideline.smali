.class public Landroidx/constraintlayout/solver/widgets/Guideline;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mMinimumPosition:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v6, :cond_3

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v4

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v3, v4

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/16 v4, 0x8

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {p1, v0, v1, v6, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    invoke-virtual {p1, v2, v0, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    invoke-static {p1, v0, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    check-cast p1, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    return-void
.end method

.method public cyclePosition()V
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativeBeginPosition()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAnchor()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/solver/widgets/Guideline$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    return v0
.end method

.method public getRelativeBegin()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    return v0
.end method

.method public getRelativeBehaviour()I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v1
.end method

.method public getRelativeEnd()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    return v0
.end method

.method public getRelativePercent()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "Guideline"

    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getX()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getY()I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    return-void
.end method

.method inferRelativeEndPosition()V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    return-void
.end method

.method inferRelativePercentPosition()V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    return-void
.end method

.method public isPercent()Z
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGuideBegin(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/4 p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuidePercent(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    return-void
.end method

.method public setMinimumPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mMinimumPosition:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setX(I)V

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->setY(I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setHeight(I)V

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->setWidth(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->setX(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setY(I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setWidth(I)V

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->setHeight(I)V

    :goto_0
    return-void
.end method
