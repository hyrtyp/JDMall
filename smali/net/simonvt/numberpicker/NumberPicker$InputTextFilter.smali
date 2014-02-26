.class Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1983
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v5, 0x0

    .line 1999
    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v6}, Lnet/simonvt/numberpicker/NumberPicker;->access$1(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 2000
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2001
    .local v0, filtered:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 2002
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2005
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {p4, v5, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2006
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {p4, p6, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2005
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2008
    .local v1, result:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2038
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2011
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v5, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$2(Lnet/simonvt/numberpicker/NumberPicker;Ljava/lang/String;)I

    move-result v3

    .line 2018
    .local v3, val:I
    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I
    invoke-static {v5}, Lnet/simonvt/numberpicker/NumberPicker;->access$3(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v5

    if-le v3, v5, :cond_2

    .line 2019
    const-string v1, ""

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 2021
    goto :goto_0

    .line 2024
    .end local v0           #filtered:Ljava/lang/CharSequence;
    .end local v1           #result:Ljava/lang/String;
    .end local v3           #val:I
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2025
    .restart local v0       #filtered:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2026
    const-string v1, ""

    goto :goto_0

    .line 2028
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {p4, v5, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2029
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p4, p6, v7}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2028
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2030
    .restart local v1       #result:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2031
    .local v2, str:Ljava/lang/String;
    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v6}, Lnet/simonvt/numberpicker/NumberPicker;->access$1(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-lt v5, v7, :cond_5

    .line 2038
    const-string v1, ""

    goto :goto_0

    .line 2031
    :cond_5
    aget-object v3, v6, v5

    .line 2032
    .local v3, val:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2033
    .local v4, valLowerCase:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2034
    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->postSetSelectionCommand(II)V
    invoke-static {v5, v6, v7}, Lnet/simonvt/numberpicker/NumberPicker;->access$4(Lnet/simonvt/numberpicker/NumberPicker;II)V

    .line 2035
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p5, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 2031
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 1993
    invoke-static {}, Lnet/simonvt/numberpicker/NumberPicker;->access$0()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 1988
    const/4 v0, 0x1

    return v0
.end method
