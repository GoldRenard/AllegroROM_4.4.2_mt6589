using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace empty_folders {
    class Program {
        static string mMark = ".empty";
        static string mUsage = System.AppDomain.CurrentDomain.FriendlyName + " <list | mark | unmark> [mark-filename]";

        const string MSG_GENERATING_LIST = "Generating list of empty folders...";

        static void Main(string[] args) {
            if (args.Length < 1) {
                Console.WriteLine(mUsage);
                return;
            }

            if (args.Length == 2) {
                mMark = args[1];
            }

            switch (args[0]) {
                case "list": {
                    showList();
                    break;
                }
                case "mark": {
                    doMark();
                    break;
                }
                case "unmark": {
                    doUnmark();
                    break;
                }
                default: { 
                    Console.WriteLine(mUsage);
                    return;
                }
            }
        }

        /// <summary>
        /// Показать список пустых директорий
        /// </summary>
        static void showList() {
            List<string> mFolders = new List<string>();
            Console.WriteLine(MSG_GENERATING_LIST);
            getEmptyList(ref mFolders, System.Environment.CurrentDirectory);
            foreach (string path in mFolders) {
                Console.WriteLine(path);
            }
        }

        /// <summary>
        /// Создать файл-метку в пустых директориях
        /// </summary>
        static void doMark() {
            List<string> mFolders = new List<string>();
            Console.WriteLine(MSG_GENERATING_LIST);
            getEmptyList(ref mFolders, System.Environment.CurrentDirectory);

            foreach (string path in mFolders) {

                string markFile = Path.Combine(path, mMark);
                Console.WriteLine("Creating file \"{0}\"", markFile);
                try {
                    File.Create(markFile).Close();
                } catch (Exception ex) {
                    Console.WriteLine(ex.Message);
                    Console.WriteLine(ex.StackTrace);
                    return;
                }
            }
        }

        /// <summary>
        /// Удалить файлы-метки
        /// </summary>
        static void doUnmark() {
            List<string> mMarks = new List<string>();
            Console.WriteLine("Searching for mark files...");
            getMarkList(ref mMarks, System.Environment.CurrentDirectory, mMark);
            foreach (string path in mMarks) {

                Console.WriteLine("Deleting file \"{0}\"", path);
                try {
                    File.Delete(path);
                } catch (Exception ex) {
                    Console.WriteLine(ex.Message);
                    Console.WriteLine(ex.StackTrace);
                    return;
                }
            }
        }

        /// <summary>
        /// Получить список пустых директорий
        /// </summary>
        /// <param name="mList">Ссылка на генерируемый список</param>
        /// <param name="rootDir">Корневая папка</param>
        static void getEmptyList(ref List<string> mList, string rootDir) {

            string[] mDirs = Directory.GetDirectories(rootDir);
            string[] mFiles = Directory.GetFiles(rootDir);

            if (mDirs.Length == 0 && mFiles.Length == 0) {
                mList.Add(rootDir);
                return;
            }

            foreach (string mDir in mDirs) {

                // skip git repo
                if (Path.GetFileName(mDir) == ".git") {
                    continue;
                }

                getEmptyList(ref mList, mDir);
            }
        }

        /// <summary>
        /// Получить список файлов-меток
        /// </summary>
        /// <param name="mList">Генерируемый список</param>
        /// <param name="rootDir">Корневая папка</param>
        /// <param name="markName">Имя метки</param>
        static void getMarkList(ref List<string> mList, string rootDir, string markName) {

            string[] mDirs = Directory.GetDirectories(rootDir);
            string[] mFiles = Directory.GetFiles(rootDir);

            string markFile = Path.Combine(rootDir, markName);

            if (mFiles.Contains(markFile)) {
                mList.Add(markFile);
            }

            foreach (string mDir in mDirs) {
                getMarkList(ref mList, mDir, markName);
            }
        }
    }
}
