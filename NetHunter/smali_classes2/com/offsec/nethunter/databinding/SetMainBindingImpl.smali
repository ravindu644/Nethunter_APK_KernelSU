.class public Lcom/offsec/nethunter/databinding/SetMainBindingImpl;
.super Lcom/offsec/nethunter/databinding/SetMainBinding;
.source "SetMainBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903f4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090158

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09047e

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0903ef

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09048a

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0903f0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090483

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0903f2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09048b

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0903f1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0903a1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09015e

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090330

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0903ab

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0903c1

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090440

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-static {p1, p2, v2, v0, v1}, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, p3, v4

    check-cast v4, Landroid/view/View;

    const/16 v5, 0xc

    aget-object v5, p3, v5

    check-cast v5, Landroid/view/View;

    const/16 v6, 0xd

    aget-object v6, p3, v6

    check-cast v6, Landroid/webkit/WebView;

    const/16 v7, 0xb

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/Button;

    const/16 v8, 0xe

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/Button;

    const/16 v9, 0xf

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/Button;

    const/4 v10, 0x4

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/EditText;

    const/4 v11, 0x6

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/EditText;

    const/16 v12, 0xa

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/EditText;

    const/16 v13, 0x8

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/EditText;

    const/4 v14, 0x1

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/Spinner;

    const/16 v16, 0x10

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/Button;

    move-object/from16 v15, v16

    const/16 v16, 0x3

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x7

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x5

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0x9

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v19}, Lcom/offsec/nethunter/databinding/SetMainBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/view/View;Landroid/webkit/WebView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->mDirtyFlags:J

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, v2, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->mboundView0:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->setRootTag(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/databinding/SetMainBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
