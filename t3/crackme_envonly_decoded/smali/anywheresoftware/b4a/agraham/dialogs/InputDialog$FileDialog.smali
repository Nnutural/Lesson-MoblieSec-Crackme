.class public Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;
.super Ljava/lang/Object;
.source "InputDialog.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "FileDialog"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;
    }
.end annotation


# instance fields
.field private chosenname:Ljava/lang/String;

.field private fastscroll:Z

.field private fileList:[Ljava/lang/String;

.field private filepath:Ljava/io/File;

.field private fileseparator:Ljava/lang/String;

.field private ftype:Ljava/lang/String;

.field private ftypes:[Ljava/lang/String;

.field private onlyfolders:Z

.field private response:I

.field private scrollcol:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x48

    const-string v4, ""

    .line 1681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1684
    const-string v0, "\u2193 Files \u2193"

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileseparator:Ljava/lang/String;

    .line 1686
    new-instance v0, Ljava/io/File;

    const-string v1, "//"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;

    .line 1687
    const-string v0, ""

    iput-object v4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->chosenname:Ljava/lang/String;

    .line 1688
    const-string v0, ""

    iput-object v4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftype:Ljava/lang/String;

    .line 1689
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftype:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftypes:[Ljava/lang/String;

    .line 1690
    iput-boolean v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fastscroll:Z

    .line 1691
    const/16 v0, 0xe6

    invoke-static {v0, v2, v2, v2}, Lanywheresoftware/b4a/keywords/constants/Colors;->ARGB(IIII)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->scrollcol:I

    .line 1692
    iput-boolean v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->onlyfolders:Z

    .line 1681
    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1689
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftypes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1688
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 1686
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1686
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;

    return-void
.end method

.method static synthetic access$4(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1703
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->loadFileList(Lanywheresoftware/b4a/objects/SimpleListAdapter;)V

    return-void
.end method

.method static synthetic access$5(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1684
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileseparator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1687
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->chosenname:Ljava/lang/String;

    return-void
.end method

.method private loadFileList(Lanywheresoftware/b4a/objects/SimpleListAdapter;)V
    .locals 13
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v9, ".."

    .line 1705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1706
    .local v0, aldirs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    .local v1, alfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p1, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1710
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1712
    new-instance v4, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;

    invoke-direct {v4, p0, v0, v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1733
    .local v4, filter:Ljava/io/FilenameFilter;
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;

    invoke-virtual {v7, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    .line 1734
    new-array v7, v10, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1735
    .local v2, dirs:[Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1736
    .local v3, files:[Ljava/lang/String;
    new-instance v7, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;

    invoke-direct {v7, p0, v11}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;)V

    invoke-static {v2, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1737
    new-instance v7, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;

    invoke-direct {v7, p0, v11}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;)V

    invoke-static {v3, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1738
    iget-boolean v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->onlyfolders:Z

    if-eqz v7, :cond_0

    .line 1740
    array-length v7, v2

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    .line 1741
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    const-string v8, ".."

    aput-object v9, v7, v10

    .line 1742
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    array-length v8, v2

    invoke-static {v2, v10, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1757
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    array-length v7, v7

    if-lt v5, v7, :cond_2

    .line 1764
    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->notifyDataSetChanged()V

    .line 1765
    return-void

    .line 1745
    .end local v5           #i:I
    :cond_0
    array-length v7, v2

    array-length v8, v3

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    .line 1746
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    const-string v8, ".."

    aput-object v9, v7, v10

    .line 1747
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    array-length v8, v2

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileseparator:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 1748
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    array-length v8, v2

    invoke-static {v2, v10, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1749
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    array-length v8, v2

    add-int/lit8 v8, v8, 0x2

    array-length v9, v3

    invoke-static {v3, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1755
    .end local v2           #dirs:[Ljava/lang/String;
    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #filter:Ljava/io/FilenameFilter;
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Path \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'does not exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1759
    .restart local v2       #dirs:[Ljava/lang/String;
    .restart local v3       #files:[Ljava/lang/String;
    .restart local v4       #filter:Ljava/io/FilenameFilter;
    .restart local v5       #i:I
    :cond_2
    new-instance v6, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;

    invoke-direct {v6}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;-><init>()V

    .line 1760
    .local v6, sl:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileList:[Ljava/lang/String;

    aget-object v7, v7, v5

    iput-object v7, v6, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->Text:Ljava/lang/String;

    .line 1761
    iput-object v11, v6, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->ReturnValue:Ljava/lang/Object;

    .line 1762
    iget-object v7, p1, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
    .locals 19
    .parameter "Title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "ba"
    .parameter "icon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1778
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1780
    .local v5, ad:Landroid/app/AlertDialog;
    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v8, v0

    .line 1781
    .local v8, diptopx:F
    const/high16 v17, 0x4120

    mul-float v17, v17, v8

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    .line 1782
    .local v9, dps10:I
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1783
    .local v16, view:Landroid/widget/LinearLayout;
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    .line 1784
    const/16 v18, -0x1

    .line 1783
    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1785
    .local v14, lparams:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1786
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1788
    new-instance v11, Landroid/widget/EditText;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1789
    .local v11, edit:Landroid/widget/EditText;
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move-object v0, v12

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1790
    .local v12, eparams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v12

    move v1, v9

    move/from16 v2, v17

    move v3, v9

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1791
    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1792
    const/16 v17, 0x7

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1793
    const/16 v17, 0x1

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 1794
    const/16 v17, 0x6

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->chosenname:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1796
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1798
    new-instance v13, Landroid/widget/ListView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1799
    .local v13, list:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fastscroll:Z

    move/from16 v17, v0

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 1800
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->scrollcol:I

    move/from16 v17, v0

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1801
    new-instance v6, Lanywheresoftware/b4a/objects/SimpleListAdapter;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/objects/SimpleListAdapter;-><init>(Landroid/content/Context;)V

    .line 1802
    .local v6, adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;
    invoke-virtual {v13, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1803
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1804
    .local v15, lvparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v15}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1805
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->loadFileList(Lanywheresoftware/b4a/objects/SimpleListAdapter;)V

    .line 1806
    new-instance v17, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v11

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Lanywheresoftware/b4a/objects/SimpleListAdapter;Landroid/widget/EditText;Landroid/widget/ListView;)V

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1844
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1846
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1847
    new-instance v10, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/16 v17, 0x0

    move-object v0, v10

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 1848
    .local v10, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1849
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1850
    const/16 v17, -0x1

    move-object v0, v5

    move/from16 v1, v17

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1851
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 1852
    const/16 v17, -0x2

    move-object v0, v5

    move/from16 v1, v17

    move-object/from16 v2, p4

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1853
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 1854
    const/16 v17, -0x3

    move-object v0, v5

    move/from16 v1, v17

    move-object/from16 v2, p3

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1855
    :cond_2
    if-eqz p6, :cond_3

    .line 1857
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v7

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1858
    .local v7, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1860
    .end local v7           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const/16 v17, 0x0

    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 1861
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->chosenname:Ljava/lang/String;

    .line 1862
    move-object v0, v10

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->response:I

    .line 1863
    move-object v0, v10

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v17, v0

    return v17
.end method

.method public getChosenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->chosenname:Ljava/lang/String;

    return-object v0
.end method

.method public getFastScroll()Z
    .locals 1

    .prologue
    .line 1914
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fastscroll:Z

    return v0
.end method

.method public getFileFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftype:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1900
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 1941
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->response:I

    return v0
.end method

.method public getScrollingBackgroundColor()I
    .locals 1

    .prologue
    .line 1957
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->scrollcol:I

    return v0
.end method

.method public getShowOnlyFolders()Z
    .locals 1

    .prologue
    .line 1970
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->onlyfolders:Z

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 1871
    const-wide v0, 0x400599999999999aL

    return-wide v0
.end method

.method public setChosenName(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 1933
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->chosenname:Ljava/lang/String;

    .line 1934
    return-void
.end method

.method public setFastScroll(Z)V
    .locals 0
    .parameter "fastscroll"

    .prologue
    .line 1919
    iput-boolean p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fastscroll:Z

    .line 1920
    return-void
.end method

.method public setFileFilter(Ljava/lang/String;)V
    .locals 2
    .parameter "filetype"

    .prologue
    .line 1889
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftype:Ljava/lang/String;

    .line 1890
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftype:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftypes:[Ljava/lang/String;

    .line 1891
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1905
    new-instance v0, Ljava/io/File;

    const-string v1, "//"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;

    .line 1906
    const-string v0, ""

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->chosenname:Ljava/lang/String;

    .line 1907
    return-void
.end method

.method public setScrollingBackgroundColor(I)V
    .locals 0
    .parameter "scrollcolor"

    .prologue
    .line 1952
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->scrollcol:I

    .line 1953
    return-void
.end method

.method public setShowOnlyFolders(Z)V
    .locals 0
    .parameter "onlyfolders"

    .prologue
    .line 1965
    iput-boolean p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->onlyfolders:Z

    .line 1966
    return-void
.end method
