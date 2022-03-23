import os

ftbquests_path = "config/ftbquests"
zh_cn_path = "resources/snp/lang/zh_cn.lang"
en_us_path = "resources/snp/lang/en_us.lang"
should_replace_key_type_value = [
    "title",
    "description"
]
should_replace_key_type_array = [
	"text"
]
context_dict = {}

def check_dir(path):
    for file in os.listdir(path):
        file_path = path + "/" + file
        if (os.path.isdir(file_path)):
            check_dir(file_path)
        else:
            read_snbt(file_path, file)
        print(path)

def read_snbt(full_path, file_name):
    print("read_snbt file: " + full_path + " name: " + file_name)
    f = open(full_path, "r+", encoding='utf-8')
    f_list = f.readlines()
    file_name = file_name.split(".snbt")[0]
    f.close()
    if (file_name == "chapter"):
        file_name = full_path.split("/")[-2]
    # flag = False # is true, then read quest text
    flag = "none"
    j = 0
    for i, line in enumerate(f_list):
        if (line.lstrip().startswith("]")):
            flag = "none"
            j = 0
        if flag != "none":
            j += 1
            text_key = flag + "." + str(j)
            replace_with_lang_key(line, text_key, f_list, i, file_name)
            continue
        for key in should_replace_key_type_value:
            if (line.lstrip().startswith(key + ":")):
                replace_with_lang_key(line, key, f_list, i, file_name)
        for key in should_replace_key_type_array:
            if (line.lstrip().startswith(key + ":")):
                flag = key
    f = open(full_path, "w+", encoding="utf-8")
    f.writelines(f_list)
    f.close()

def replace_with_lang_key(line, key, f_list, index, file_name):
    first_quote_index = line.find("\"")
    last_quote_index = line.rfind("\"")
    head = line[0:first_quote_index]
    content = line[first_quote_index + 1:last_quote_index]
    tail = line[last_quote_index + 1:len(line)]
    lang_key = "snp.quests.%s.%s" % (file_name, key)
    print("get lang key %s, value = %s" % (lang_key, content))
    new_content = head + "\"{" + lang_key + "}\"" + tail
    f_list[index] = new_content
    context_dict[lang_key] = content
        

def write_lang(path):
    copy = context_dict.copy()
    if (len(copy) == 0):
        return
    to_append_entries = []
    f = open(path, "r+", encoding='utf-8')
    f_list = f.readlines()
    f.close()
    f_list_copy = f_list.copy()
    for i, line in enumerate(f_list):
        if (line.startswith("#")):
            continue
        key = line.split("=")[0]
        if (key in copy):
            p = copy.pop(key)
            if p.find("{")==-1 or p.find("}")==-1 :
                f_list_copy[i] = key + "=" + p + "\n"
    for key, value in copy.items():
        to_append_entries.append(key + "=" + value)
    f = open(path, "w+", encoding="utf-8")
    f.writelines(f_list_copy)
    for entry in to_append_entries:
        f.write(entry + "\n")
    f.close()

check_dir(ftbquests_path)
write_lang(zh_cn_path)
write_lang(en_us_path)
