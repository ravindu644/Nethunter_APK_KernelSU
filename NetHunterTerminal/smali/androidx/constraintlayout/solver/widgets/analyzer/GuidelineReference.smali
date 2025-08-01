.class Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;
.super Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.source "GuidelineReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->clear()V

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->clear()V

    check-cast p1, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->orientation:I

    return-void
.end method

.method private addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method apply()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v1

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v2

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativePercent()F

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    if-eq v1, v3, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    goto :goto_0

    :cond_0
    if-eq v2, v3, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    neg-int v1, v2

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput-boolean v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    goto/16 :goto_2

    :cond_2
    if-eq v1, v3, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    goto :goto_1

    :cond_3
    if-eq v2, v3, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    neg-int v1, v2

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput-boolean v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    :goto_2
    return-void
.end method

.method public applyToWidget()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setX(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setY(I)V

    :goto_0
    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->clear()V

    return-void
.end method

.method reset()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    return-void
.end method

.method supportsWrapComputation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .locals 1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    int-to-float p1, p1

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativePercent()F

    move-result v0

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    return-void
.end method
